# Dieses Programm gibt gleich sechs Zufallszahlen aus, und zwar Lottozahlen (6 aus 49).
# Dabei verwendet es ein Array und Bedingungen, sowie die Sprungmarke next.
# Im Vergleich zu lotto1.rb wird das Programm so deutlich weniger umfangreich.

lottozahlen = []

loop do
    number = rand(49) + 1
    if lottozahlen.include?(number) ## wenn die lottozahl bereits enthalten ist, soll er eine neue ziehen.
        next
    else
        lottozahlen << number
    end

    break if lottozahlen.length == 6 # beendet die Schleife, wenn das Array insgesamt sechs Elemente hat.
end

print("Die Lottozahlen lauten ")

6.times do |i|
    print("#{lottozahlen[i]} ")
end

puts(". Alle Angaben ohne Gewähr.")
