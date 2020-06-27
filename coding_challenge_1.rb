p 'Jim has four seven-sided dice, each with faces numbered 1, 2, 3, 4, 5, 6, 7.'
p 'Jill has seven four-sided dice, each with faces numbered 1, 2, 3, 4.'
#
p 'Both of them roll all of their dice and calculate the sums of the numbers on their respective dice. The one with the higher sum wins.'
#
# QUESTION:
p 'What is the probability that Jim wins? Give your answer rounded to seven decimal places.'


jim_possibilities = []
jill_possibilities = []
jim_dice=*(1..7)
jill_dice=*(1..4)


jim_possibilities = jim_dice.repeated_permutation(4).map(&:sum).to_a

jill_possibilities = jill_dice.repeated_permutation(7).map(&:sum).to_a

jim_vs_jill = []
jim_possibilities.each do |jim|
  jill_possibilities.each do |jill|
    jim_vs_jill << (jim > jill)
  end
end

results = Hash[jim_vs_jill.group_by(&:itself).map {|k,v| [k, v.size] }]
total_games = jim_vs_jill.count

p results[true].fdiv(total_games).round(7)
