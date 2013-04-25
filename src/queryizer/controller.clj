

(ns queryizer.controller
	(:use korma.db)
	(:use korma.core)
	(:require [clojure.java.io :as io]))

(defdb db (mysql {:db "te"
	              :user "root"
	              :password "services"
	              :host "localhost"
	              :port "3306"}))

(defentity unix
	(table :unix)
	(database db))

(def query-finished (promise))

(defn run-query [query]
	(println "QUERY ID: " query)
	(exec-raw [query] :results))

(def available-queries
	(read-string 
		(slurp (io/resource "queries"))))

(defn query [id] 
	(:sql (first (filter #(= id (:id % )) available-queries))))

;;
;; Atoms are thread-safe mutable variables
;;
 
(def ^:private jobs (atom {}))
 
(defn- run-a-query
"Runs the query and associates a new status and results with the job map."
[job]
(assoc job :status :done :results (exec-raw [(:query job)] :results)))
 
(defn- update-jobs
"Updates our job state with a job."
[job]
(swap! jobs (fn [js] (assoc js (:id job) job))))
 
(defn- run-job
"Runs the job in a thread."
[job]
(doto (Thread. (fn [] (update-jobs (run-a-query job))))
(.setName (str "job-runner-" (:id job)))
(.start)))
 
(defn- make-id
"Makes a UUID for uniquely "
[]
(str (java.util.UUID/randomUUID)))
 
;; public API
 
(defn submit-job
"Creates a job for query, returns it, spawns a background process to actually
return the job."
[query]
(let [id (make-id)
job {:job id :query query :status :in-progress :results []}]
(swap! jobs assoc id job)
(run-job job)
job))
 
(defn delete-job
"Delete an existing job."
[id]
(swap! jobs dissoc id))
 
(defn get-job
[id]
"Get the latest about a specific job."
(get @jobs id))
 
(defn list-jobs
"Get a list of all the jobs."
[]
(vals @jobs))