#!/bin/sh
if [ ! -f UUID ]; then
  UUID="db3469af-e350-4035-b9c2-a7fcd76f517f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

