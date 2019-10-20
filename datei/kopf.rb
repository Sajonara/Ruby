# Dieses Programm soll eine Datei einlesen und die ersten fünf Zeilen ausgeben

if ARGV.empty? # Falls keine Argumente übergeben wurden…
  puts("Du musst einen Dateinamen eingeben.")
  puts("Bsp.: ruby kopf.rb ./lotto1.rb")
else
  File.open(ARGV[0], "r") do |datei|
    d = datei.readlines # die Datei Zeile für Zeile in eine Variable speichern
    i = 0
    while i < 5 # nur die ersten fünf Zeilen ausgeben
      puts("#{i+1}: #{d[i]}")
      i += 1
    end
  end
end
