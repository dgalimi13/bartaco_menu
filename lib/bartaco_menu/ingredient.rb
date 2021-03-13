class BartacoMenu::Event
    attr_accessor :name, :item 
    @@all = []

    def initialize(name)
        @name = name 
        @item = item
        save
    end

    def save
        @@all << self
    end 

    

end