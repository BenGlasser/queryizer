;;-----------------------------------------------------------------------------
;; Update this data structure with queries you want to be part of the app's
;; default deployment.
;;-----------------------------------------------------------------------------

[ {:id "orphan.1"
   :desc "Elements missing element names."
   :sql
   "
SELECT ELEMS.oid AS \"Element OID\", NODEGRPBL.nme AS \"Node Name\",
 SNODE.SN_IPADDR AS \"Node Address\", ELEMS.E_NID AS \"Node OID\",
 RULEGRPBL.nme AS \"Rule Name\", ELEMS.E_RID AS \"Rule OID\"
 FROM ELEMS
 LEFT OUTER JOIN ENAMES ON EN_OID = ELEMS.E_NMID
 LEFT OUTER JOIN Grpbl NODEGRPBL ON NODEGRPBL.oid = ELEMS.E_NID
 LEFT OUTER JOIN SNODE ON SNODE.oid = ELEMS.E_NID
 LEFT OUTER JOIN Grpbl RULEGRPBL ON RULEGRPBL.oid = ELEMS.E_RID
 WHERE ENAMES.EN_OID IS NULL"}


  {:id "orphan.2"
   :desc "Elements missing latest version."
   :sql "
SELECT
 ELEMS.oid AS \"Element OID\", ELEMS.E_NID AS \"Node OID\", ELEMS.E_RID AS \"Rule OID\",
 ENAMES.EN_OID AS \"Element Name OID\", ENAMES.EN_DISPLAY as \"Element Name\",
 n.nme as \"Node Name\", r.nme as \"Element Name\", Vers.oid as \"Version oid\"
 from ELEMS
 join ENAMES on ENAMES.EN_OID = ELEMS.E_NMID
 join Grpbl n on ELEMS.E_NID = n.oid
 join Grpbl r on ELEMS.E_RID = r.oid
 left outer join Vers on ELEMS.E_LCID = Vers.oid
 where Vers.oid is null and ELEMS.E_LCID <> 9223372036854775807"}

  {:id "orphan.3"
   :desc "Latest element version missing attributes."
   :sql "
SELECT
 ELEMS.oid AS \"Element OID\", ELEMS.E_NID AS \"Node OID\", ELEMS.E_RID AS \"Rule OID\",
 ENAMES.EN_OID AS \"Element Name OID\", ENAMES.EN_DISPLAY as \"Element Name\",
 n.nme as \"Node Name\", r.nme as \"Element Name\", lcvers.oid as \"Latest Version OID\"
 from ELEMS
 join ENAMES on ENAMES.EN_OID = ELEMS.E_NMID
 join Grpbl n on ELEMS.E_NID = n.oid
 join Grpbl r on ELEMS.E_RID = r.oid
 join Vers lcvers on ELEMS.E_LCID = lcvers.oid and lcvers.V_ATTR <> 9223372036854775807
 left outer join ATTRIBS on lcvers.V_ATTR = ATTRIBS.F_ID
 where ATTRIBS.F_ID is null"}

  {:id "orphan.4"
   :desc "Baseline element version missing attributes."
   :sql "
SELECT
 ELEMS.oid AS \"Element OID\", ELEMS.E_NID AS \"Node OID\", ELEMS.E_RID AS \"Rule OID\",
 ENAMES.EN_OID AS \"Element Name OID\", ENAMES.EN_DISPLAY as \"Element Name\",
 n.nme as \"Node Name\", r.nme as \"Element Name\", blvers.oid as \"Baseline Version OID\"
 from ELEMS
 join ENAMES on ENAMES.EN_OID = ELEMS.E_NMID
 join Grpbl n on ELEMS.E_NID = n.oid
 join Grpbl r on ELEMS.E_RID = r.oid
 join Vers blvers on ELEMS.E_BLID = blvers.oid and blvers.V_ATTR <> 9223372036854775807
 left outer join ATTRIBS on blvers.V_ATTR = ATTRIBS.F_ID
 where ATTRIBS.F_ID is null"}

  {:id "diagnostic.5"
   :desc "Nodes with failing tests."
   :sql "select
             distinct n.nme as name,
             n.oid as oid
           from
             PolicyTestResult
           join
             Grpbl n on PolicyTestResult.f_nodeID = n.oid
           where
             PolicyTestResult.f_state = 1
           and
             PolicyTestResult.f_nextResultTime is NULL" }

  {:id "general.6"
   :desc "List of nodes."
   :sql "select
           ni.ip,
           n.*,
           g.nme
         from
           Grpbl g,
           KEYMGR k,
           Node n left outer join NodeIp ni on ni.nodeId=n.oid
         where
           n.oid=g.oid and
           g.g_type=0 and
           k.KM_KEY='nodes' and
           k.KM_ID=g.g_id"}

]
