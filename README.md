
### Ruby version
* 2.4.1

### Configuration
##### replace: 
* /config/database.yml.example with /config/database.yml
* /env.example with /.env

### Index page
* index page -> /app/views/main/index.html.erb

### Static pages
 * /app/views/example.html.erb available here ->  http://localhost:3000/pages/example
  
### Styles 
 * /app/assets/stylesheets

### Database creation
1. rake db:setup
2. rake db:migrate

### Deployment instructions
* cap production deploy
