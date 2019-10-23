# Dieses Script macht aus einem String lauter Großbuchstaben/Versalien.
# Vielleicht nützlich für die Ausgabe auf Webseiten.

text = [] # ein leeres Array instanziieren
text = "Spieletipps".split('').each do |c| # einen String in ein Array aus Zeichen umwandeln
  text << c
end

def versalien(str = [])
  str.map { |c| c.upcase  }.join # Die einzelnen Elemente des Arrays in Großbuchstaben verwandeln und wieder zu einem Wort zusammenfassen
end

puts versalien(text)
