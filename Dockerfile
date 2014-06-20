from webwurst/ubuntu
run apt-get update

# add repository
run curl http://www.arangodb.org/repositories/arangodb2/xUbuntu_14.04/Release.key | apt-key add -
add arangodb.list /etc/apt/sources.list.d/
run apt-get update

# arangodb
run apt-get -y install arangodb
add arangodb-start /usr/local/bin/

cmd /usr/local/bin/arangodb-start
volume ["/var/lib/arango", "/var/lib/arangodb-apps"]
expose 8529