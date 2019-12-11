require('rspec')
require('r_p_s.rb')

describe('string') do

  it("returns true if rock is the 1st argument and scissors is the 2nd argument") do
    game = RPS_ONE.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns true if rock is the 1st argument and scissors is the 2nd argument") do
    game = RPS_ONE.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end

  it("returns true if rock is the 1st argument and scissors is the 2nd argument") do
    game = RPS_ONE.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end

  it("returns false if rock is the 1st argument and scissors is the 2nd argument") do
    game = RPS_ONE.new()
    expect(game.wins?("rock", "rock")).to(eq(false))
  end

  it("returns false if rock is the 1st argument and scissors is the 2nd argument") do
    game = RPS_ONE.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end


  # REFACTOR
  it("returns false if rock is the object and scissors is the argument") do
    rock = RPS_TWO.new("rock")
    expect(rock.wins?("paper")).to(eq(false))
  end

  # it("returns false if rock is the object and scissors is the argument") do
  #   player1_choice = "rock"
  #   player1_choice = RPS_THREE.new(player1_choice)
  #   expect(player1_choice.wins_v_computer?()).to(eq(false))
  # end

end
