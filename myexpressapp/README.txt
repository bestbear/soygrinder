express --view=pug myexpressapp

   create : myexpressapp/
   create : myexpressapp/public/
   create : myexpressapp/public/javascripts/
   create : myexpressapp/public/images/
   create : myexpressapp/public/stylesheets/
   create : myexpressapp/public/stylesheets/style.css
   create : myexpressapp/routes/
   create : myexpressapp/routes/index.js
   create : myexpressapp/routes/users.js
   create : myexpressapp/views/
   create : myexpressapp/views/error.pug
   create : myexpressapp/views/index.pug
   create : myexpressapp/views/layout.pug
   create : myexpressapp/app.js
   create : myexpressapp/package.json
   create : myexpressapp/bin/
   create : myexpressapp/bin/www

   change directory:
     $ cd myexpressapp

   install dependencies:
     $ npm install

   run the app:
     $ DEBUG=myexpressapp:* npm start
