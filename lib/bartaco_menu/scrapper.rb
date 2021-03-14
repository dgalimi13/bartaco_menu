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

    def self.scrape_ingredients(item)
      BartacoMenu::Ingredient.new("baja fish", item)
      BartacoMenu::Ingredient.new("pork belly", item)
    end 

end  