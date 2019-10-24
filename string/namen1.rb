# Dieses Programm erwartet die Eingabe von Vor- und Nachname.
# Dieses Programm vergleicht die Länge von Vor- und Nachname und macht eine entsprechende Äußerung.

print("Gib bitte deinen Vornamen ein: ")
vorname = gets.chomp
vornameLaenge = vorname.length

print("Gib nun bitte deinen Nachnamen ein: ")
nachname = gets.chomp
nachnachmeLaenge = nachname.length

print("Der Vorname #{vorname} ist ")
if vornameLaenge < nachnachmeLaenge
    print("#{nachnachmeLaenge - vornameLaenge} Zeichen kürzer als ")
elsif vornameLaenge == nachnachmeLaenge
    print("genauso lang wie ")
else
    print("#{vornameLaenge - nachnachmeLaenge} Zeichen länger als ")
end
puts("der Nachname #{nachname}.")
