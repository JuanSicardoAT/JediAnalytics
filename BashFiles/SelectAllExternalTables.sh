#!/usr/bin/env bash

#This bash executes an HQL that consults all tables limited to 10 rows

HELPER_HQLS_HOME="HQLs/HelperHQLs/"

hive -f "${HELPER_HQLS_HOME}SelectAllExternalTables.hql"