require_relative '/home/djo75/Bureau/Code/THP/S4/S4J4/Morpion_game_v2/lib/app/board_case.rb'
require_relative '/home/djo75/Bureau/Code/THP/S4/S4J4/Morpion_game_v2/lib/app/board.rb'
require_relative '/home/djo75/Bureau/Code/THP/S4/S4J4/Morpion_game_v2/lib/app/player.rb'

class Game 
    def initialize
        # On efface l'écran du terminal
      system "clear"
      puts "Bienvenue au jeu du morpion!"
      puts "Attention, si tu choisis une case déjà occupée, tu perds ton tour!"
      puts
      puts "Joueur 1, ton symbole sera X, choisis un nom: "
      print "> "
      name_1 = gets.chomp
  
      # crée le joueur 1
      @player1 = Player.new(name_1, "X")
      puts
      puts "Joueur 2, ton symbole sera un rond O , choisis un nom: "
      print "> "
      name_2 = gets.chomp
  
      # crée le joueur 2
      @player2 = Player.new(name_2, "O")
      @current_player = @player1
  
      # crée le plateau de jeu
      @board = Board.new
    end

    def go
        # lance la partie
        while @board.victory? == false
          self.turn
        end
    end
    
      # Passe d'un joueur à l'autre
    def switch_players
        if @current_player == @player1
            @current_player = @player2
        else
            current_player = @player1
        end
    end

      def turn
        # On boucle tant qu'il n'y a pas de victoire
        loop do
            system "clear"
            puts "============="
    
            puts "Voici l'état du jeu:"
            # Affiche le plateau :
          @board.show_board_updated
    
          puts ""
          puts "C'est le tour de #{@current_player.name} avec les #{@current_player.sign}"
          puts "Choisis une case parmi celles-ci"
          @board.show_board
          print ">"
          @case_choice = gets.chomp
          
    
          # On appelle la méthode play de la classe board sur le joueur en cours (current). Elle demande au joueur quelle case il joue, puis affiche son symbole dans la case
          @board.play(@current_player.sign, @case_choice)
    
          # On arrête la boucle en cas de victoire
          if @board.victory? == true
              system "clear"
                   puts "============="
                  puts "Voici l'état du jeu:"
            @board.show_board_updated
            puts ""
            puts "#{@current_player.name} a gagné !!!"
            puts
            break
          end
    
          # Il n'y a pas de victoire : on passe au joueur suivant et on boucle (tour suivant)
          switch_players
        end
    end
end 


