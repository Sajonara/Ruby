# Dieses Programm ermittelt nach der Eingabe der Bildschirmauflösung und der Displaydiagonale die Pixeldichte in ppi.

# Import der Mathebibliothek notwendig, für die Funktion zum Wurzelziehen
require 'cmath'

puts("Gib bitte vertikale Auflösung an: ")
y = gets.to_i

puts("Gib nun bitte die horizontale Auflösung an: ")
x = gets.to_i

puts("Und wie groß ist die Displaydiagonale in Zoll (Angabe bitte mit Punkt statt Komma)?")
d = gets.to_f

ppi = CMath.sqrt((x*x)+(y*y))/d

puts("Das Gerät, dessen Daten du eingegeben hast, bietet #{ppi} Pixeldichte.")
