class BartacoMenu::Item
    attr_accessor :name 
    attr_writer :ingredients
    @@all = []

    def initialize(name)
    @name = name 
    @ingredients = []
   save
    end

    def self.all
        BartacoMenu::Scraper.scrape_items if @@all.empty?
        @@all
    end

    def ingredients
        binding.pry
        BartacoMenu::Scraper.scrape_ingredients if @@all.empty?
        @ingredients
    end

    def save
    @@all << self
    end 

    

end