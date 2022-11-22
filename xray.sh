#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e332c53c-6309-4624-a29a-236b8a49e114"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

