env
cat <<EOF >> /etc/mumble-server.ini
database=$DB_NAME
dbDriver=QMYSQL
dbUsername=$DB_USER
dbPassword=$DB_PASSWORD
dbHost=$DB_HOST
dbPort=3306
dbPrefix=
dbOpts=
EOF

/usr/sbin/murmurd -supw $SUPERUSER_PASSWORD
/usr/sbin/murmurd -v -fg
