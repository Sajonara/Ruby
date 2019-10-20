# Dieses Programm testet die Funktion des Webservers WEBRick aus Ruby.
# Super Cool, denn von Haus aus bringt Ruby quasi einen eigenen Webserver mit.
# Ihr könnt auf diese Weise schnell eigene Prototypen-Apps für Kunden vorführen,
# ganz ohne Rails.

require 'webrick' # Webrick zum Projekt hinzufügen
include WEBrick # Das passende Modul laden

root = File.expand_path('index.html') # Ihr könnt hier die Datei festlegen, die angezeigt werden soll, wenn man die Domain (localhost:6001) aufruft

server = HTTPServer.new(:Port => 6001, :DocumentRoot => root) # neuen Webserver instanziieren und sowohl den Port als auch die Root-Domain festlegen
server.mount('/', HTTPServlet::FileHandler, '.')

# Den Server so einrichten, dass er auf zB die Eingabe von CTRL + C im Terminal reagiert und dann abbricht
['TERM','INT'].each do |signal|
    trap(signal) { server.shutdown }
end

# Den Server starten
server.start
