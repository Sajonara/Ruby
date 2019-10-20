# Dieses Programm präsentiert den Umgang mit Parametern/Argumenten über die Konsole/das Terminal.
# Übrigens, wer sich mit C auskennt, dem kommt ARGV doch stark bekannt vor.

if ARGV.empty?
    puts("Kein Argument übergeben")
elsif ARGV.length == 1 # Genau ein Argument wurde übergeben
    puts("Du hast ein Argument übergeben, und zwar #{ARGV[0]}")
else # Mehrere Argumente übergeben
    puts("Du hast mehr als ein Argument übergeben.")
end
