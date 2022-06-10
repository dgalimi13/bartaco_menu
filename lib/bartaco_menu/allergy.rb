class Allergy

    attr_accessor :name, :ingredients
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

    def self.scrap_allergies
        BartacoMenu::Scraper.scrape_allergies
    end 

    def save
        @@all << self
    end 

    

end 