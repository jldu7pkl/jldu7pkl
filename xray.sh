#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0f043b51-ca2b-4049-abe6-2af66c46eb92"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

