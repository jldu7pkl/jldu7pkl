#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a4b92cd8-cfc3-4b9f-8063-a04841803a7b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

