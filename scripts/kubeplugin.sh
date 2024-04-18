#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <namespace> <resource_type>"
    exit 1
fi

NAMESPACE=$1
RESOURCE_TYPE=$2

echo "Resource, Namespace, Name, CPU, Memory"

kubectl get $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read line
do
    NAME=$(echo $line | awk '{print $1}')
    CPU=$(echo $line | awk '{print $2}')
    MEMORY=$(echo $line | awk '{print $3}')

    echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, $CPU, $MEMORY"
done
