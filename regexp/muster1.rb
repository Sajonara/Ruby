# Dieses Programm soll ein Datum erkennen

text = "Ich bin am 24.11.1980 geboren."

muster = /(\d){1,2}[.](\d){1,2}[.](\d){4}/

fund = []

puts fund = muster.match(text)
