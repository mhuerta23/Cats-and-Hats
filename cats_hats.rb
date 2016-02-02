##### Right way ######
#You have 100 cats in a row all wearing hats.
#You make 100 passes by the cats. The first time through.
#You visit every cat and remove its har if it's on and put it on if it's off.
#The second time you only visit every 2nd cat (cat#2, cat#4, cat#6 etc)
#The third time, every third cat (cat#3, cat#6, cat#9 etc)
#Until you visit the 100th cat.
#After the last pass, which cats aren't wearing hats?
​
cats = []
101.times do |cat|
  cats << true
end
​
101.times do |pass|
  101.times do |num_of_cat|
    if num_of_cat % (pass + 1) == 0
      if cats[num_of_cat] == true
        cats[num_of_cat] = false
      elsif cats[num_of_cat] == false
        cats[num_of_cat] = true
      else
        cats[num_of_cat]
      end
    end
  end
end
​
i = 0
while i < cats.length
  if cats[i] == false
    p i
  end
  i += 1
end
​
####################
#REFRACTORED CODE
​
cats = []
101.times do |cat|
  cats << true
end
​
101.times do |pass|
  101.times do |num_of_cat|
    if num_of_cat % (pass + 1) == 0
      if cats[num_of_cat] = !cats[num_of_cat]
      end
    end
  end
end
​
cats.each_with_index do |cat, i|
  if i > 0
    if !cat
      p i
    end
  end
end




####OLD WAY#### :( it sucks###
# cats = Array.new(100, true)
# cats.length.times do |n|
#    (n ... cats.length).step(n + 1).each do |x|
#      cats[x] = !cats[x]
#    end
# end
#
# cats.each_with_index do |x, n|
#  puts "Cat #{n + 1} has hat? #{x}"
# end
#
#
#
#
# mycats=[*1..100]
#
# i=2
#
# while i<=100
#
# selectedcat=[*1..100].select do |rounds|
#        rounds %i == 0
#    end
#
# hatcatvisited = (mycats) & (selectedcat)
# nohatcatvisited = (selectedcat) - (hatcatvisited)
# mycats = (mycats) - (hatcatvisited) + (nohatcatvisited)
#
#
#    i+=1
# end
#
# puts "#{mycats}"
