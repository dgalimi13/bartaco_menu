class BartacoMenu::CLI
    def call
        puts "Welcome to Bartaco"
        get_menu_items
        get_user_item
        # get_menu_items
        # get_user_item
        # get_info_for_item
        #list_item_info
    end 

    def get_menu_items
        # to be scrapped instead
        @items = ['duck', 'chicken', 'chorizo', 'falafel']
    end

    def get_user_item
        # list items
        @items.each_with_index do  |item, index|
          puts "#{index} #{item}"
        end
    end
    
end 


end  
