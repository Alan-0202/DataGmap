# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]

* System dependencies
Linux ubuntu 5.4.0-52-generic #57~18.04.1-Ubuntu SMP Thu Oct 15 14:04:49 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
RubyMine 2020.2.3
node -> stable (-> v14.10.1)
* Configuration
rails new ~
rails g scaffold ~ 
rails c
rails s
bundle install

* Database creation
rails g scaffold country Cid:string name:string latitude:float longitude:float
rails g scaffold country Cid:string name:string latitude:float longitude:float

* Database initialization
Data Create
namespace :customr do
  desc "This take does something useful!"
  task :do_it => [ :environment ] do
    puts "Do something useful!"

    require 'csv'
    filename="/home/alan1/csvdata/lib/tasks/data.csv"
    CSV.foreach(filename, :headers => true) do |row|
      # # Country.create!(row.to_hash)
      # country = Country.create!( carbonE: row[1], carbonT: row[2], gdpE: row[3], gdpT: row[4])
      # puts row[0]
      @country = Country.create!(Cid: row[5], name: row[0], latitude: row[6], longitude: row[7])

        # @country = Country.create!(Cid: row[5], name: row[0], latitude: row[6], longitude: row[7])

      # puts @country.id
      # #       #
      # #       # puts @country.Cid
      Countrydb.create!(countryid: row[5], carbonten: row[1], carboneight: row[2], gdpten: row[3], gdpeight: row[4])
    end
  end
end


* How to run the test suite


* Services (job queues, cache servers, search engines, etc.)
No search
cache: No
queues:pipe

* Deployment instructions



* ...
