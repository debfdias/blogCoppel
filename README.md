
Simple blog site.

Language: Node.Js + Express
Database: MySQL

### Run in Heroku
Go to: `https://blogcoppel.herokuapp.com/`


### Run local

```bash
# Clone from git
git clone https://github.com/debfdias/blogCoppel 

# Change directory
cd blogCoppel 

# Install npm package (if necessary)
npm install

```

### Database configuration
Open your phpmyadmin page and create a database. Call it whatever you want.

Select your db and import the db.sql file. 

Open the config.js file and change with your database host, user and password.

### Populate with fake data
If you want, you can fill the database with fake random data from lorem ipsum. For that, type:

```bash
node migrate.js

```

### Run
```bash
node app.js

```

Open your browser and go to `http://localhost:3000`

Test user: `admin@admin.com:admin`.

