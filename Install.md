## Extension repository

GIT repository: 
[GitHub](https://github.com/dynatrace-extensions/mongodb.mongodb)

## MongoDB with Prometheus 
Note: This extension is not compatible with Atlas. This extension is working with on premise 
For MongoDB Atlas monitoring check out the dedicated [extension](https://www.dynatrace.com/hub/detail/mongodb-atlas/)

Min cluster version required: 230
Percona Prometheus exporter compatible with the extension available [here](https://github.com/percona/mongodb_exporter)

## Install: 
```
	Make sure that you have Percona Prometheus exporter running on the host where MongoDB is deployed.
	setup authentication credentials to the exporter by this example

	mongodb_exporter_linux_amd64/mongodb_exporter --mongodb.uri=mongodb://127.0.0.1:17001
	or directly supply the password:

	MONGODB_USER=XXX MONGODB_PASSWORD=YYY mongodb_exporter_linux_amd64/mongodb_exporter --mongodb.uri=mongodb://127.0.0.1:17001 --mongodb.collstats-colls=db1.c1,db2.c2
	# or
	export MONGODB_USER=XXX
	export MONGODB_PASSWORD=YYY
	mongodb_exporter_linux_amd64/mongodb_exporter --mongodb.uri=mongodb://127.0.0.1:17001 --mongodb.collstats-colls=db1.c1,db2.c2
```
(more at exporter readme site)

1. Download the extension from the Hub

2. Provide the required device configuration

3. Make sure that you can reach your host at the address
localhost:port/metrics 
accesible at the set port(9216 by default), and that the same port is in dynatrace config.

4. Deploy the extension and start collecting metrics

Optional
	If you need a traffic generator to test the extension and RoR is not a mystery to you, 
	then there is a [companion available](https://github.com/dynatrace-extensions/mongodb.mongodb/tree/main/companion/traffiGen-MongoDB)
	that while deployed under Ruby on Rails is configured to use the mongoDB local server and generate entries to the database on demand.
	Set the db credentials in config/mongoid.yml file and start companion with 
	rails db:setup 
	command to populate database and 
	rails s 
	to run the companion.
