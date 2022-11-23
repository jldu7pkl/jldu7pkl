#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4e1f1512-a2d7-40fb-8454-df1f569a9939"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

