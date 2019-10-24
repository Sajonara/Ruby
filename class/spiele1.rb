# Tests mit einer Klasse für Spiele
class Spiele
    class Spiel
        def initialize(name, usk, veroeffentlichungsjahr)
            @name = name
            @usk = usk
            @veroeffentlichungsjahr = veroeffentlichungsjahr
        end
        attr_reader(:name, :usk, :veroeffentlichungsjahr)
    end

    def initialize
        @spiele = []
    end
    attr_reader :spiele

    def hinzu(*spiel)
        spiele.push(Spiel.new(*spiel))
        self
    end

    def ausgeben
        spiele.each_with_index do |x, i|
            puts("#{i+1}. #{x.name} wurde #{x.veroeffentlichungsjahr} veröffentlicht, und hat eine Altersfreigabe von #{x.usk}.")
        end
        puts("Es sind insgesamt #{spiele.length} in unserer Datenbank enthalten.")
        self
    end
end

# Spieledatenbank initiieren
isdb = Spiele.new

# Einträge zur Spieledatenbank hinzufügen
isdb.hinzu("Super Mario Land", 0, 1989)
isdb.hinzu("Sonic the Hedgehog", 0, 1990)
isdb.hinzu("Sonic the Hedgehog 2", 0, 1991)

# Spieledatenbank ausgeben
isdb.ausgeben
