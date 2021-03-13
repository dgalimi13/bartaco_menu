class BartacoMenu::Item
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

    def ingredients
        BartacoMenu::Scraper.scrape_ingredients(self) if @ingredients.empty?
        @ingredients
    end

    def save
    @@all << self
    end 

    

end