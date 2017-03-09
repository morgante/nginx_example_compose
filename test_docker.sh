#/bin/bash

tries=1
ret=1
while [ $ret -ne 0 ] && [ $tries -ne 0 ]
do
    sleep 3

    curl -f localhost:8333 > /dev/null 2>&1
    ret=$?

    let "tries -= 1"
done

echo $ret

if [ $ret -eq 0 ]; then
    echo "SUCCESS"
else
    echo "FAILURE"
fi

exit $ret
