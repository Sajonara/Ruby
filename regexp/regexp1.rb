# Testprogramm für den Umgang mit regulären Ausdrücken

text = "Hallo. Ich bin ein Test-Text und mit Hilfe eines regulären Ausdrucks, soll in mir Text gefunden werden, oder eben mehr. Deshalb sag ich mal 2., dass atrust@sajonara.de eine E-Mail-Adresse ist und Privateer der Name von einem Spiel."

gefunden = text.match(/\s[A-Za-z0-9]+@([A-Za-z0-9]+)\.[A-Za-z0-9]+\s/) # Sollte eigentlich eine E-Mail-Adresse zurückgeben
puts gefunden
puts $1


gefundenAlternative = text.match(/\s\w+@\w+\.\w+\s/) # Sollte eigentlich ebenfalls eine E-Mail-Adresse zurückgeben
puts gefundenAlternative

unless text.match(/\sPrivateer\s/).nil?
    newText = text.gsub(/\sPrivateer\s/, ' <a href="privateer.html">Privateer</a> ')
end

puts newText
