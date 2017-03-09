#/bin/bash

tries=1
ret=1

curl -f localhost:8333 > /dev/null 2>&1
ret=$?

if [ $ret -eq 0 ]; then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

exit $ret
