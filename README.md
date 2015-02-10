[loading...](https://filrouge.scalingo.io)

== LAST UPDATES

- Using HAML
- Authentification: BasicAuth and the Dotenv gem
- New Database : PostresQl
- New form to insert interesting links
- Add form validation
- Deploy on Heroku
- Create a deployment script
- Add Tests
- Add filter : display only items with status true on "completed goals" page

== TODO

- Add mailer
- Add BDD test (Rspec/cucumber)
- Add  Design : front side with AngularJS

== TO PUSH ON PROD (SCALINGO)

* Create environnement variables on your scalingo dashboard (environnement tab) and put them on your config/database.yml
	example:
	```production:
	  	url: <%= ENV['DATABASE_URL'] %>
	```
* git push scalingo master
* scalingo -a yourapp run rake db:migrate
* Connect to a scalingo Postgresl database:
```scalingo -a <application name> run -e PGPASSWORD=<password> psql -U <user> -h <host> -p <port> <db>```
Then you can do some sql operations


to be completed...
