# Dies ist ein Beispiel für ein sehr einfaches Rollenspiel. Es ist ein wenig Phantasie notwendig, sich das vorzustellen.

# Kreiere ein Feld von Gegnern
gegner = []

# Fülle das Feld mit 10 Gegnern mit zufälligen Gesundheitspunkten (1..100)
10.times do |n|
    n = 1 + rand(99)
    gegner << n
end

# Gib das Feld der Gegner aus
p gegner

# Weise dem aktuellen Gegner Gesundheitspunkte zu und entferne ihn aus dem Feld der Gegner
gegnerJetzt = gegner.shift

puts("Du triffst auf einen Gegner mit #{gegnerJetzt} Gesundheit.")

# Nun ziehen wir dem Gegner Trefferpunkte ab, die zufällig berechnet werden.
loop do
    hit = 1 + rand(49)
    if hit < gegnerJetzt
        puts("Du hast den Gegner getroffen.")
        puts("Dein Schlag zieht ihm #{hit} Energie ab.")
        gegnerJetzt -= hit
        puts("Er hat jetzt noch #{gegnerJetzt} Energie.")
    else
        puts("Dein Treffer ist enorm.")
        puts("Du besiegst den Gegner mit diesem Schlag.")
        break
    end
end

# So viele Gegner warten noch
puts gegner.length
