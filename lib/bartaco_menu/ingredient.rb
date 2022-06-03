class BartacoMenu::Ingredient
    attr_accessor :name, :item 
    @@all = []

    def initialize(name, item)
        @name = name 
        @item = item
        add_to_item
        save
    end

    def self.all 
        @@all 
    end 

    def add_to_item
        @item.ingredients << self unless @item.ingredients.include?(self)
    end

    def save
        @@all << self
    end 

    def destroy

    end 

    def add_price_to_ingrediant(ingrediant)

    end 

    remove_price_from_ingrediant

    end 

    def add_allergie_to_menu

    end 

end