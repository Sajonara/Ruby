# Dieses Script präsentiert den Umgang mit Dateien

# Datei öffnen
File.open("./argv.rb", "r") do |datei| # Datei zum Lesen öffnen mit Option "r"
    n = 1
    while zeile = datei.gets
        print "#{n}:"
        puts zeile # Inhalt Zeile für Zeile ausgeben
        n += 1
    end
end

File.open("./testfile.rb", "w") do |datei| # Datei zum Schreiben öffnen mit Option "w"
    datei.puts("Dies ist ein Test.")
end

File.open("./testfile.rb", "r") do |datei| # Vorher selbst erzeugte Datei zum Lesen öffnen
    n = 1
    while zeile = datei.gets
        print "#{n}: "
        puts zeile # Inhalt Zeile für Zeile ausgeben
        n += 1
    end
end

file = File.open("./argv.rb") # Andere Art, Dateien zu öffnen
lines = file.readlines
p lines
file.close

i = 1
Dir.open(".").each do |file| # Ein Ordner-Listing erstellen und ausgeben
    listing = []
    listing << file
    if File.directory?(file) # Handelt es sich um einen Ordner?
        print("#{i} | Verzeichnis | ")
    else # Oder um eine Datei?
        print("#{i} | Datei | ")
    end
    puts("#{file}")
    i += 1
end
