#!/bin/bash

## script to monitor a counter and fire off an alert


#config
# TODO : fill in these variables
group_name='hi.mr.Counter$MyMapper$Counters'
counter_name='BAD_RECORDS'
job_id='job_201309211454_0009'
# end config

bad_counter=$(mapred job -counter "$job_id"  "$group_name"  "$counter_name")
echo "BAD_RECORDS : $bad_counter"

# TODO : now print an alert if BAD_COUNTERS > 3
if [ "$bad_counter" -gt  3 ]
then
    echo "FAIL"
else
    echo "PASS"
fi

