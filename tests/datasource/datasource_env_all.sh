#!/bin/bash



### Configure shell and bootstrap
#
set -e
set -u
. ./_bootstrap.sh



### Get data from Snoopy
#
VAL_SNOOPY=`$SNOOPY_TEST_DATASOURCE env_all`



### Evaluate
#
if [ "$VAL_SNOOPY" != "" ]; then
    snoopy_testResult_pass
else
    snoopy_testResult_fail "$VAL_SNOOPY" ""
fi