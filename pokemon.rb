class Pokemon
  attr_accessor :attack
  attr_accessor :hp

  def initialize(attack:, hp:)
     @attack = attack
     @hp = hp
  end
end

pikachu = Pokemon.new(attack: 13, hp: 30)
zenigame = Pokemon.new(attack: 6, hp: 50)
index = 1

if pikachu.attack > zenigame.attack
  loop do
    if zenigame.hp <= 0
      sleep 2
      puts "------"
      puts "決着!"
      break
    end
    puts "------"
    puts "第#{index}戦"
    index += 1
    puts "------"
    print "ピカチュウの残りHP: ";p pikachu.hp
    print "ゼニガメの残りHP: ";p zenigame.hp -= pikachu.attack
    sleep 1
  end
else
  loop do
    if pikachu.hp <= 0
      sleep 2
      puts "------"
      puts "決着!"
      break
    end
    puts "------"
    puts "第#{index}戦"
    index += 1
    puts "------"
    print "ピカチュウの残りHP: ";p pikachu.hp -= zenigame.attack
    print "ゼニガメの残りHP: ";p zenigame.hp
    sleep 1
  end
end
