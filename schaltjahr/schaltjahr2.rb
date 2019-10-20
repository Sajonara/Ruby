# Dieses Programm prüft, ob ein eingegebenes Jahr ein Schaltjahr ist. Wir erstellen dazu jedoch die eigene Methode teilbar?
# Sie verringert die Arbeit gegenüber der Remainder-Methode.

# teilbar? definieren, sie bekommt zwei Parameter übergeben
def teilbar?(zahl, teiler)
    zahl.remainder(teiler) == 0 # Ausdruck liefert true oder false zurück
end

# Nutzer soll eine Jahreszahl eingeben
puts("Gib bitte eine Jahreszahl ein:")
jahr = gets.to_i # die Eingabe wird in einer Variable gespeichert und zur ganzen Zahl umgewandelt
# An dieser Stelle verzichte ich auf die Überprüfung, ob es sich tatsächlich um eine ganze Zahl handelt.
# Sollte der Nutzer beispielsweise Text eingeben, bricht das Programm einfach ab.

if (teilbar?(jahr, 4) and not teilbar?(jahr, 100)) or teilbar?(jahr, 400) # wiederum wird die Abfrage genutzt, ob ein Jahr durch 4 oder 400 teilbar ist, aber nicht durch 100
    puts("Das Jahr #{jahr} ist ein Schaltjahr.")
else
    puts("Das Jahr #{jahr} ist kein Schaltjahr.")
end
