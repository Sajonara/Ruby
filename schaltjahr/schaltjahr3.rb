# Dieses Programm prüft, ob ein eingegebenes Jahr ein Schaltjahr ist.
# Die Arbeit wird nun aber auf die zwei Methoden teilbar? und schaltjahr? ausgelagert, um die Abfrage später noch weiter zu vereinfachen.

# Eine eigene Methode teilbar? prüft, ob ein Jahr durch einen Teiler teilbar ist.
def teilbar?(zahl, teiler)
    zahl.remainder(teiler) == 0 # Ausdruck liefert true oder false zurück
end

# Eine weitere Methode schaltjahr? prüft, ob ein bestimmtes Jahr ein Schaltjahr ist
def schaltjahr?(j)
    (teilbar?(j, 4) and not teilbar?(j, 100)) or teilbar?(j, 400)
end

# Der Nutzer wird gebeten, eine Jahreszahl einzugeben.
puts("Gib bitte eine Jahreszahl ein:")
jahr = gets.to_i # Seine Eingabe wird in einer Variablen gespeichert und zur Ganzzahl umgewandelt

# Handelt es sich um ein Schaltjahr?
if schaltjahr?(jahr)
    puts("Das Jahr #{jahr} ist ein Schaltjahr.")
else
    puts("Das Jahr #{jahr} ist kein Schaltjahr.")
end
