#!/bin/sh

sed "s,64738,$PORT,g" -i /app/murmur.ini
sed "s,changeme,$PASSWORD,g" -i /app/murmur.ini
sed "s,72000,$BANDWITH,g" -i /app/murmur.ini

echo "PORT : $PORT"
echo "PASSWORD : $PASSWORD"

/app/murmur.x86 -fg -v -ini /app/murmur.ini
