class BartacoMenu::Scraper
    def scrape_items
      doc = Nokogiri::HTML(open("https://bartaco.com/location/port-chester/"))
    binding.pry
    end

end 