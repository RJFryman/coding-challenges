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

jim_dice.each do |a|
  jim_dice.each do |b|
    jim_dice.each do |c|
      jim_dice.each do |d|
        jim_possibilities << [a,b,c,d].sum
      end
    end
  end
end

jill_dice.each do |a|
  jill_dice.each do |b|
    jill_dice.each do |c|
      jill_dice.each do |d|
        jill_dice.each do |e|
          jill_dice.each do |f|
            jill_dice.each do |g|
              jill_possibilities << [a,b,c,d,e,f,g].sum
            end
          end
        end
      end
    end
  end
end

jim_vs_jill = []
jim_possibilities.each do |jim|
  jill_possibilities.each do |jill|
    jim_vs_jill << (jim > jill)
  end
end

total_games = jim_vs_jill.count
results = jim_vs_jill.group_by(&:itself).map { |k,v| [k, v.count] }.to_h

p results[true].fdiv(total_games).round(7)
