require 'pry'
require_relative '/home/djo75/Bureau/Code/THP/S4/S4J4/Morpion_game_v2/lib/app/board_case.rb'

class Board
    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

    def initialize
        @a1 = BoardCase.new("a1", " ")
        @a2 = BoardCase.new("a2", " ")
        @a3 = BoardCase.new("a3", " ")
        @b1 = BoardCase.new("b1", " ")
        @b2 = BoardCase.new("b2", " ")
        @b3 = BoardCase.new("b3", " ")
        @c1 = BoardCase.new("c1", " ")
        @c2 = BoardCase.new("c2", " ")
        @c3 = BoardCase.new("c3", " ")
    end

    def show_board       
        
        puts " a1 | a2 | a3 "
        puts "-------------"
        puts " b1 | b2 | b3 "
        puts "-------------"
        puts " c1 | c2 | c3 "
    end   

    def play (sign, case_choice)
        # volonté de faire l'opération @a1.a1 = sign (dans mon instance de BoardCase, je veux chercher ma variable @a1)
        # marche pas
    end


    def show_board_updated 

        puts " #{@a1.a1} | #{@a2.a2} | #{@a3.a3} "
        puts "-------------"
        puts " #{@b1.b1} | #{@b2.b2} | #{@b3.b3} "
        puts "-------------"
        puts " #{@c1.c1} | #{@c2.c2} | #{@c3.c3} "
    end

    def victory?
        # qui gagne : on teste si les rangées ou diagonales contiennent des symboles identiques
        if (@a1.a1 == @a2.a2 && @a1.a1 == @a3.a3) || (@b1.b1 == @b2.b2 && @b1.b1 == @b3.b3) || (@c1.c1 == @c2.c2 && @c1.c1 == c3.c3) ||(@a1.a1 == @b1.b1 && @a1.a1 == c1.c1)  || (@a2.a2 == @b2.b2 && @a2.a2  == c2.c2)  || (@a3.a3 == @b3.b3 && @a3.a3 == c3.c3)  || (@a1.a1 == @b2.b2 && @a1.a1 == c3.c3) || (@a3.a3 == @b2.b2 && @a3.a3 == c1.c1) 
            return true
        else
            return false
        end
    end
end




# new_board = Board.new
# puts new_board.show_board_updated
# puts "-------------"
# puts new_board.player_choice("a2")
# new_board.redefine(new_board.player_choice("a2"))
# puts "--------------"
# puts new_board.show_board_updated
# # puts new_board.case_id_transform


# puts new_board.show_board_updated


# new_board.a1.player_choice("a1", "x")
# puts new_board.a1.a1 = "X" 

# #new_board.update_boardcase(case_id, sign)
#     new_board


# new_board.show_board_updated



    

       