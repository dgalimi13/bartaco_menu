class BartacoMenu::CLI
    def call
        puts "Welcome to Bartaco"
        # @input = ""
        # until @input == "exit"
        get_menu_items
        list_items
        get_user_item
        # repeat
        # end 
        # goodbye
    end
     

    def get_menu_items
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
        show_ingredients_for(chosen_item) if valid_input(chosen_item, @items)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_ingredients_for(chosen_item)
        item = @items[chosen_item - 1]
        item.get_ingredients 
        puts "Here are the ingredients for #{item.name}"
        item.ingredients.each_with_index do |ingredient, index|
        
        puts "#{index+1}. #{ingredient.name}"
         end
        #get_user_event(item)
    end

    # def repeat
    #     puts "When you are done type 'exit' to exit or select another taco"
    #     @input = gets.strip
    #   end 
      
    #   def goodbye
    #     puts "Enjoy Eden!"
    #   end 

end  
