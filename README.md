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
#Record the design, development, implementation, installation and use of the application in the form of a one-page final report and in the readme.md file. [10 points]
## DESIGN
In order to study carbon dioxide and the relationship between GDP, search for data on the web site, https://databank.worldbank.org/source/world-development-indicators#, and choose the 2010, 2008, carbon dioxide, and the relationship between GDP, we focus on the contrast between the different years data of one country. We use Ruby On Rails.The goal is to achieve dynamic comparisons of data and representation of countries on maps.
## DEVELOPMENT
1. Building ENV
We built the virtual machine by ourselves and used VMware software to create ubuntu virtual machine, and installed Ruby, Rails, Node. js and other frameworks.To transfer document data, the SSH FTP service is used for file transfer.
2. We use "Rails New" to create projects, scaffolding to create applications, and database models
3. Data processing: We integrated the data found from the website, used data mining technology to populate the data, removed illegal characters, and merged the geographic coordinate data.
4.Import CSV data into database:
We wanted to create two tables one for national basic information and one for national CARBON dioxide and GDP data.Where you define the ID in the country table as a foreign key to link Country_id in the Data table.But that doesn't make any sense.We stopped using this scenario, so importing data is creating Raks Tasks
` ` `
namespace :customr do
Desc "This take does something useful!"
Task: do_it = & gt;[ :environment ] do
Puts "Do something useful!"
The require 'CSV'
Filename = "/ home/alan1 csvdata/lib/tasks/data. The CSV"
CSV. Foreach (filename, : headers = & gt;true) do |row|
 Country. Create!(row.to_hash)
 country = the country create!( carbonE: row[1], carbonT: row[2], gdpE: row[3], gdpT: row[4])
 puts the row [0]
@ country = the country create!(Cid: row[5], name: row[0], latitude: row[6], longitude: row[7])
 @ country = the country create!(Cid: row[5], name: row[0], latitude: row[6], longitude: row[7])
puts @ country. Id
 puts @country.cid
Countrydb create!(countryid: row[5], carbonten: row[1], carboneight: row[2], gdpten: row[3], gdpeight: row[4])
The end
The end
end
` ` `
5. We have shown the data of the two tables separately using a table (bootstrap has been configured and is used).The front end USES open source templates for secondary development.In the Country information in the front display we will have a show action.If you click on it, you get all the data for the country.The back-end method we use is
` ` `
Def show
Num = params [: id]
@ countrydb = countrydb. Find_by_countryid (num)
` ` `
We use the query function to pass the country data to the country View
` ` `
The < div >
The < div > < span > & lt;%= @countrydb.carboneight %&gt;</span></div>
The < div > < span > & lt;%= @countrydb.carbonten %&gt;</span></div>
The < div > < span > & lt;%= @countrydb.gdpeight %&gt;</span></div>
The < div > < span > & lt;%= @countrydb.gdpten %&gt;</span></div>
` ` `

6. We built in an immature matrix graph to represent all the data of the country, using a third-party plug-in.
Img

7. 
* ...
