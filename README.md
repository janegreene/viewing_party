# Viewing Party
### About this Project

Viewing party is an application in which users can explore movie options and create a viewing party event for the user and friend's. It was created as a Mod 3 paired project over the course of 10 days. A user will enter the site via Google Oauth, search for friends on the site via email address. Add friends, search for movies from the robust TMDB API, and create a party. Once the party is created, guests will be able to add the event to their Google Calendar!

<h4 align="center">
<a href="https://viewing-party-me-jg.herokuapp.com/">View our App Here</a>
</h4>


### Team
<p>
<a href="https://github.com/michaeljevans">Michael Evans GitHub</a>
</br>
<a href="https://www.linkedin.com/in/michaeljamesevans/">LinkedIn</a>
</p>
<p>
<a href="https://github.com/janegreene">Jane Greene GitHub</a>
</br>
<a href="https://www.linkedin.com/in/jane-greene-mba/">LinkedIn</a>
</p>

## Technologies
* [TMDB API](https://www.themoviedb.org/documentation/api)
* [PostgreSQL](https://www.postgresql.org/)
* [TravisCI](https://travis-ci.org/)

### Ruby Version & Gems
- <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/200px-Ruby_logo.svg.png" alt="Ruby Logo" width="20" height="20"/> v2.5.3
- <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ruby_On_Rails_Logo.svg/200px-Ruby_On_Rails_Logo.svg.png" alt="Rails Logo" width="60" height="20" /> v5.2.4.3

- rspec-rails
- capybara
- launchy
- pry
- simplecov
- shoulda-matchers
- factory_bot_rails
- faker
- rubocop
- figaro

# Have a Look
<p align="center">
<img src="https://i.imgur.com/CGKKU93.png">
</p>

# Getting Started

## Local Setup

1. Fork and Clone the repo
2. Obtain API keys from TMDB
3. Obtain Google Oauth credentials and activate the Calendar API

#### Install gems:
```javascript
bundle install
```
#### Configure databases:
```javascript
rails db:{create,migrate,seed}
```
#### Fire up local server: (http://localhost:3000)
```javascript
rails s
```
#### Run test suite:
```javascript
bundle exec rspec
```
