[loading...](https://filrouge.scalingo.io)

== UPDATES

- Using HAML
- Authentification: BasicAuth and the Dotenv gem
- New Database : PostresQl
- New form to insert interesting links
- Add form validation
- Deploy on Heroku
- Create a deployment script
- Add Tests

== TODO

- Add mailer
- Add BDD test (Rspec/cucumber)
- Add  Design : front side with AngularJS

== TO PUSH ON PROD (SCALINGO)

- Create environnement variables on your scalingo dashboard (environnement tab) and put them on your config/database.yml
	example:
	```production:
		username: <%= ENV['USER_DB'] %>
	  	password: <%= ENV['PASS_DB'] %>
	  	url: <%= ENV['DATABASE_URL'] %>
	```
- git push scalingo master
- scalingo rake db:migrate

to be completed...