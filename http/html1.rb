# Dieses Programm liest den Inhalt einer Webseite ein, mit dem man dann weiter umgehen kann

require 'net/http' # Import der Klasse ist für die Kommunikation mit Webseite notwendig

# URL, den wir abfragen wollen
uri = URI('https://www.pcgamesdatabase.de/gameinfo.php?game_id=4552')

# Antwort, mit der wir weiterarbeiten möchten
antwort = Net::HTTP.get_response(uri)

antwort.each do |key,value|
    printf "%-20s = %s\n", key, value
end

text = antwort.body

gefunden = text.match(/Entwickler\:.+/)

puts /Entwickler/.match(text)
