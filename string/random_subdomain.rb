# Script gibt nach Eingabe eines Strings eine zufällige Zeichenfolge aus
# Diese besteht aus maximal 8 Zeichen, die zuvor auch (in Teilen) übergeben wurden

def random_subdomain(s)
  s.split('').shuffle[0..7].join # Der String wird erst Zeichen für Zeichen getrennt, dann werden die Zeichen gemischt und die ersten acht weiterverarbeitet und wieder zusammengefügt
end

puts random_subdomain("Hallo, Welt")
