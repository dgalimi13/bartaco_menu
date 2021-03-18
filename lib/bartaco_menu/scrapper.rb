class BartacoMenu::Scraper
    def self.scrape_items
      doc = Nokogiri::HTML(open("https://bartaco.com/location/port-chester/"))
      
      tacos = doc.css("div#tacos h5")
      
      tacos.each do |t|
        name = t.text
        BartacoMenu::Item.new(name)
        
      end 
    end

    def self.scrape_ingredients(item)
      doc = Nokogiri::HTML(open("https://bartaco.com/location/port-chester/"))
      
      ingredients = doc.css("div#tacos p")
      shift = ingredients.shift
      pop = ingredients.pop 
      pop2 = ingredients.pop
      pop3 = ingredients.pop

      ingredients.each do |t|
        name = t.text
        
        BartacoMenu::Ingredient.new(name,item)
      end 
      
      
      
      
     
      end
    

end  