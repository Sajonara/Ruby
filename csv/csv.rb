# Dieses Programm trainiert den Umgang mit CSV-Dateien.
# Es ist super einfach in Ruby mit CSV-Dateien zu Arbeiten.

require 'csv' # Die benötigte Klasse einbinden.

CSV.open("gravis.csv", headers: true, liberal_parsing: true, col_sep: ";") do |row| # Eine CSV-Datei öffnen und beispielsweise das Trennzeichen - in dem Fall Semikolon – einrichten.
    row.each do |word| # Die Datei zeilenweise durchgehen…
        if word[1].match?('Apple') # Falls das Wort Apple in einem Datensatz vorkommt…
            puts("#{word[1]} kostet bei Gravis #{word[3]} und hat die Artikelnummer #{word[0]}.") # …einen vorgefertigten Satz aus passenden Daten ausgeben.
        end
    end
end
