# Jim has four seven-sided dice, each with faces numbered 1, 2, 3, 4, 5, 6, 7.
# Jill has seven four-sided dice, each with faces numbered 1, 2, 3, 4.
#
# Both of them roll all of their dice and calculate the sums of the numbers on their respective dice. The one with the higher sum wins.
#
# QUESTION:
# What is the probability that Jim wins? Give your answer rounded to seven decimal places.


jim_dice  = *(1..7)
jill_dice = *(1..4)

jim_possibilities = jim_dice.repeated_permutation(4).map(&:sum).to_a
jill_possibilities = jill_dice.repeated_permutation(7).map(&:sum).to_a

jim_win = 0
jill_win_or_draw = 0
jim_possibilities.each do |jim|
  jill_possibilities.each do |jill|
    (jim > jill) ? jim_win += 1 : jill_win_or_draw += 1
  end
end

print "#{jim_win}/#{jim_win+jill_win_or_draw}\nor \n"
p jim_win.fdiv(jim_win + jill_win_or_draw).round(7)
print "or \n"
puts "#{jim_win.fdiv(jim_win + jill_win_or_draw).round(9)*100}%"
