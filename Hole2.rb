

class RPS
  attr_writer :rand_seed

  def initialize(guess:)
    @guess = guess.downcase
  end

  def randomization_algorithm
    rand 2342343
  end

  def computer_guess
    srand (@rand_seed || randomization_algorithm)
    computer_guesses = %w{rock paper scissors}
    computer_guesses.sample 
  end

  def winner_is

  end
end

rps = RPS.new(guess: "Rock")
rps.rand_seed = 1
rps.computer_guess


describe RPS do

  
  it 'paper beats rock' do
    rps = RPS.new(guess: 'rock')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('Computer wins')
  end

  it 'paper loses to scissors' do
    rps = RPS.new(guess: 'scissors')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('you win')
  end

  it 'paper ties with paper' do
    rps = RPS.new(guess: 'paper')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('Tie')
  end
end 

# Takes a user input the computer 
# randomly chooses 
# and the winner is output to the screen.