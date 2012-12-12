CIFGlue
=======

This is a simple rails app to make it easy to manually add Indicators of Compromise to a CIF server.  The application allows you to quickly and easily enter details about several indicators and save them to a database.  The CIF server can be instructed to pull from several RSS feeds produced by the application.

Setup
-----

Ensure that you can run Ruby on Rails.  Follow the helpful instructions to download and install Ruby on Rails (http://rubyonrails.org/download/).  If you think that you might run more than one rails app on your machine you might want to consider skipping those instructions and use Ruby Version Manager instead (https://rvm.io/rvm/install/).

Like most rails apps.  You're going to need to git clone this into a folder, then run 'bundle install' to get all the gems.  I recommend using an RVM Gemset so that you can keep it all separate from other rails apps.  This application stores the indicators in its own database and it was built with Postgres in mind since that is what our CIF server is running.  However, there is no reason why CIFGlue has to run on PG.  If you're familiar with rails you can easily change this to run on MySQL or SQLite.  There is a sample database config file in the config folder called database.example.yml.  Copy that file and call it database.yml.  Update config/database.yml with the host information and credentials for your database server.  The database user will need permission to create databased but does not need to be an administrator.  Once the database user has been created and the credentials entered into config/database.yml proceed to run 'rake db:create' and you should be all set. Now you can run 'rails server' and start entering indicators.  Access the application by opening a browser and visiting http://localhost:3000 (replace localhost with the ip address of the machine running CIFGlue).

Configuring CIF
---------------

CIFGlue will create two feeds which you can import into CIF and assign confidence to.  One feed contains all the malware hashes that have been entered and can be accessed at http://localhost:3000/malware.rss.  The other feed is every indicator that is not malware and can be accessed at http://localhost:3000/other.rss.
 
Customizing CIFGlue
===================

Since you might not work for Verizon you probably don't want your RSS feed to say Verizon intelligence and all that.  If you go into the app/models/settings.rb file you can change the ORGNAME value to something specific for your group.  The default value is Verizon so that you'll know who made this awesome app (which is basically a less-cool less-sophisticated version of Twitter). You can also change the logo at the top of the screen by placing your own logo into app/assets/images and changing the value of ORGIMAGE in the app/models/settings.rb file.  The default is Verizon because Verizon rocks.

Searching a Text File
=====================
There is a rake task that you can use to search quickly through a text file of indicators.  The text file should have one indicator on each line and nothing else.  Once you have the text file on the server you can search for cases where those indicators appear by typing:

rake quicksearch infile=/foo/bar.txt RAILS_ENV=production (or whatever environment your production indicators are in)

Thanks
------

I have to say thanks to everyone at StackOverflow.com for puttint together an awesome community which has provided me so many answers.  And big thanks to Dave Kruse for helping me out when StackOverflow couldn't.
