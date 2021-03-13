class BartacoMenu::Scraper
    def self.scrape_items
      doc = Nokogiri::HTML(open("https://bartaco.com/location/port-chester/"))
      
      tacos = doc.css("div#tacos h5")
      
      tacos.each do |t|
        name = t.text
        BartacoMenu::Item.new(name)
        #binding.pry
      end 
    end

end  