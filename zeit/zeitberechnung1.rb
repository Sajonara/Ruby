# Dieses Programm dient der Zeitberechnung

require 'date' # Wir benötigen dazu einige Methode aus der Klasse 'date'

heute = DateTime.now # Das heutige Datum festlegen
geburtstag = DateTime.new(1980,11,24) # einen beliebigen Geburtstag festlegen
wochentage = %w(Montag Dienstag Mittwoch Donnerstag Freitag Samstag Sonntag) # Wochentage festlegen

puts geburtstag.strftime("Ich wurde am %d.%m.%Y geboren.") # Den Geburtstag herkömmlich ausgeben
printf "Das war vor %i Tagen.\n", (heute - geburtstag).to_i # Mit dem Datum rechnen und ausgeben, vor wie vielen Tagen jemand geboren wurde.
puts "Es war ein #{wochentage[geburtstag.wday - 1]}, in der Kalenderwoche " + geburtstag.cweek.to_s + "." # Berechnungen zum Wochentag und der Kalenderwoche anstellen.

# Das Beispiel kann im Prinzip auf beliebig viele Fälle, auch Jubiläen oder für Countdowns oder zur Erinnerung an Todestage oder dergleichen abgewandelt werden.
