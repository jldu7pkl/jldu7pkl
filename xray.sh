#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5afa17ce-2b24-4ed0-96be-e27d7f76c022"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

