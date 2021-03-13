class BartacoMenu::Item
    attr_accessor :name

    @@all = []

    def initialize(name)
    @name = name 
   save
    end

    def self.all
        BartacoMenu::Scraper.scrape_items if @@all.empty?
    @@all
    end

    def save
    @@all << self
    end 

end