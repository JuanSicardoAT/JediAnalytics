#!/usr/bin/env bash

HELPER_HQLS_HOME="HQLs/HelperHQLs/"

hive -f "${HELPER_HQLS_HOME}DropAllExternalTables.hql"