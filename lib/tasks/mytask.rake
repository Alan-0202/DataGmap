namespace :customr do
  desc "This take does something useful!"
  task :do_it => [ :environment ] do
    puts "Do something useful!"

    require 'csv'
    filename = File.expand_path("../", __FILE__ ) + "/data.csv"
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