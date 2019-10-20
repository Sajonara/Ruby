# Beispiel für eine Klasse in Ruby

class Game
    def initialize(name, jahr=1999, usk=0)
        @name = name
        @jahr = jahr
        @usk = usk
    end

    def spielen
        puts("Ich spiele #{@name}!")
    end

    def info
        puts("#{name}")
        puts("Veröffentlichungsdatum: #{jahr}")
        puts("USK: #{usk}")
    end

    attr_accessor "jahr", "usk"
    attr_reader "name"

    # def name
    #    @name
    # end

    # def name=(name)
    #     @name = name
    # end
end

class Retro < Game
    def power
        puts("Cowabunga, #{@name}!")
    end
end

diablo = Game.new("Diablo")

diablo.spielen

quake = Game.new("Quake")
quake.spielen
quake.info
quake.usk = 18
quake.info

sm = Retro.new("Super Mario")
sm.info
sm.power
