
# Bartendventory_app

Welcome to my Sinatra app Bartendventory App! This application was built to, in the most simplest of forms,
assist a bar or restaurant in keeping track of their liquor inventory. Within this application one would be able to create their own "Cabinet" and either create the liquor that they intend on carrying with par and price included or choose a liquor from a list of already created liquors. The user is able to manage their cabinets and liquors for each particular cabinet accordingly. Each individual liquor is available to be updated as well as the cabinet. The cabinet is shown in multiple ways. Either as a simple list of what is in stock or in table form with liquor par and price included within the table. 

Publicly accessible via "http://www.bartendventory-app.herokuapp.com"

# Installation

Fork and clone repo from "http://www.github.com/lsuman83/Bartendventory_app" or you may also run heroku git.clone -a bartendventory-app in the terminal

# Development
After checking out the repo, run bundle install to install dependencies. Run rake db:migrate to build your schema migrations. 

Create a root file called .gitignore and add the line ".env" to keep our ".env" out of version control. Next, create the ".env" file. Then, run generate_secret to create a hashed session secret. Copy the salted hash that is created and paste it into your .env file and set your SESSION_SECRET variable to the salted hash that was created.

# Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/lsuman83/Bartendventory_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.

# License
The gem is available as open source under the terms of the MIT License.

# Code of Conduct
Everyone interacting in the HealthyHungerApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.