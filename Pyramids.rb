=begin
def half_pyramid
  puts "Hello This is my half pyramid which Floor are u ?"
  floor = gets.chomp.to_i

  width = 80  
  puts "There is the half pyramid:"
  (1..floor).each do |i|
    line = ("#" * i).rjust(floor)
    puts line.center(width)
  end
end

half_pyramid
=end
=begin
def full_pyramid
  puts "Hi, welcome to my awesome pyramid! How many floors do you want?"
  floors = gets.chomp.to_i

  puts "Here is the pyramid:"
  (1..floors).each do |i|
    hashtag = "#" * (2 * i - 1)
    puts hashtag.rjust(floors + i - 1)
  end
end
full_pyramid
=end
=begin
walk = 0

puts " Bienvenue ! Tu es en bas d'un escalier de 10 marches."
puts "Objectif : atteindre la marche 10. C'est parti !"

while walk < 10
  puts "Appuie sur Entrée pour lancer le dé..."
  gets

  de = rand(1..6)
  puts "Tu as fait #{de} !"

  if de >= 5
    walk += 1
    puts "⬆  Tu montes ! Tu es maintenant sur la marche #{walk}."
  elsif de == 1
    if walk> 0
      walk -= 1
      puts "⬇ Aïe, tu redescends ! Tu es maintenant sur la marche #{walk}."
    else
      puts "⬇  Tu voudrais descendre, mais tu es déjà tout en bas (marche #{walk})."
    end
  else
    puts "  Rien ne se passe. Tu restes sur la marche #{walk}."
  end

end

puts "BRAVO !! Tu as atteint la marche 10 ! T'es une LÉGENDE !"
=end


def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)
"
  print "> "
  n = gets.chomp.to_i


  if n <= 0 || n.even?
    puts "Eh non, il me faut un nombre impair et positif !"
    return
  end

  puts "Voici la pyramide :"

  milieu = (n - 1) / 2  

  (0...n).each do |i|
    distance = (i - milieu).abs  
    diese    = n - 2 * distance  
    espaces  = distance          
    puts " " * espaces + "#" * diese
  end
end

wtf_pyramid
