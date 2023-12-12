#!/usr/bin/env bash
#!/usr/bin/env bash

echo "Running test"

RESULT=$(curl -s http://127.0.0.1:9001/testendpoint)

if [ "Hello World" = "$RESULT" ]
then
    echo "Test successful"
    exit 0
else
    echo "Test unsuccessful: $RESULT"
    exit 1
fi