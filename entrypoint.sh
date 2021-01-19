#!/bin/sh -l

until curl -i -s -f -o /dev/null -u ${USER}:${PASS} ${URL}; do
  echo "Service is not ready - waiting ${TIME}s"
  sleep ${TIME}
done

echo "Service is ready"

exit 0