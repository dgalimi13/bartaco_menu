class BartacoMenu::CLI
    def call
        puts "Welcome to Bartaco"
        get_menu_items
        list_items
        get_user_item
    end 

    def get_menu_items
        BartacoMenu::Item.new("baja")
        BartacoMenu::Item.new("chicken")
        @items = BartacoMenu::Item.all
        
        
    end

    def list_items
        puts 'Choose a taco to see its ingredients'
        @items.each_with_index do  |item, index|
          puts "#{index+1}. #{item.name}"
        end
    end

    def get_user_item
        chosen_item = gets.strip.to_i
        show_events_for(chosen_item) if valid_input(chosen_item, @items)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
        
    end

    def show_events_for(chosen_item)
        item = @items[chosen_item - 1]
        puts "Here are the ingredients for #{item}"
        
        #BartacoMenu::Item.all.each.with.index do |item|
            #puts item.name
        #end
        #get_user_item
        
    end

end  
