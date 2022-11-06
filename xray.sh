#!/bin/sh
if [ ! -f UUID ]; then
  UUID="56f18d7c-2e74-4e6b-8cc1-a22ce805b66e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

