class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def attack(player)
    player.injure
  end

  def switch_turns
    @current_turn = find_next_player
  end

  private

  def find_next_player
    next_player = [@player_1, @player_2].select do |player|
      @current_turn != player
    end
    next_player[0]
  end

end