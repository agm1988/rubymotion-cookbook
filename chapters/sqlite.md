
# Sqlite

Though many people prefer coredata, but I personally prefer to use my SQL foo.

I will showcase, the library which I am writing, it uses FMDB cocoapod to run the app

https://github.com/railsfactory/rubymotion-sqlite




challenges
* create the tables on first run
* migrations
* remote sync
* application upgrades
* seed data insertions/pre-built data
* data encryption on device


Features which are working
* Create Table by SQL
* simple finds (find(:first),find(:last),find(:last))
* SQL logging
* result as a array of hash with key being the column


Things working on
* cleaner API



To Do
* planning to implement a ActiveRecord style migration strategy
* sync with remote data
* multiple tables
* data conversion

