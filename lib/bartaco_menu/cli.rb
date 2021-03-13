class BartacoMenu::CLI
    def call
        puts "Welcome to Bartaco"
        get_menu_items
        list_item_info
        get_user_item
    end 

    def get_menu_items
        # to be scrapped instead
        @items = ['duck', 'chicken', 'chorizo', 'falafel']
    end

    def list_item_info
        puts 'Choose a taco to see its ingredients'
        @items.each_with_index do  |item, index|
          puts "#{index + 1} #{item}"
        end
    end

    def get_user_item
        chosen_item = gets.strip
        binding.pry
        #if valid_input(chosen_item, @items)
        #end
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

end  
