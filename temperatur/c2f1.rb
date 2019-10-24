# Dieses Programm testet das Umwandeln von Celsius in Fahrenheit

print("Gib eine Gradzahl in Grad Celsius ein, um Sie in Grad Fahrenheit umzuwandeln: ")
eingabe = gets().chomp.to_i

fahrenheit = (eingabe * 9 / 5) + 32

# Die Ausgabe des Ergebnisses erfolgt auf dem Bildschirm
puts("#{eingabe} Grad Celsius sind #{fahrenheit} Grad Fahrenheit.")

=begin
Darüber hinaus wollen wir das Ergebnis auch in einer Datei speichern.
Entsprechend "öffnen" wir zunächst eine Datei mit Schreibrecht (w).
Ist die Datei noch nicht vorhanden, wird Sie erstellt.
=end
datei = File.new("ergebnis.txt", "w")

# Ergebnis in die Datei schreiben
datei.puts(fahrenheit)

# Datei schließen
datei.close
