# Das Programm simuliert einen Münzwurf und gibt aus, ob Kopf oder Zahl gefallen ist.

def abfrage(frage, ja, nein)
    antwort = nil # Die Variable außerhalb der Schleife instantiieren, damit sie später weiter verwendbar bleibt
    loop do
        print frage
        antwort = gets.chomp
        break if antwort == ja # Die Schleife wird beendet, falls die Antwort positiv ausfällt
        break if antwort == nein # Die Schleife wird aber auch beendet, falls die Antwort negativ ausfällt, in allen anderen Fällen soll das Programm ja weiterlaufen
    end
    antwort
end

loop do
    zahl = rand(2)
    ja = "j"
    nein = "n"
    if zahl == 0
        puts("Die Münze zeigt Kopf.")
    else
        puts("Die Münze zeigt Zahl.")
    end
    wahl = abfrage("Soll ich die Münze noch einmal werfen? (j/n)", ja, nein)
    break if wahl == nein
end
