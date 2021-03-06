(ns queryizer.core
  (:gen-class )
  (:require [queryizer.view :as views]
            [ring.adapter.jetty :as jetty]))



(defn -main [& args]
  (let [port (Integer/parseInt (get (System/getenv) "PORT" "8081"))]
    (jetty/run-jetty #'views/app {:port port :join? true})))


