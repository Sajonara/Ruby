# Dieses Programm errechnet anhand der Eingabe, ob es sich um ein Schaltjahr handelt.

puts("Gib bitte ein Jahr ein, von dem du wissen möchtest, ob es ein Schaltjahr ist.") # einfache Ausgabe im Terminal

jahr = gets.to_i # Eingabe wird in Variable gespeichert

if jahr.remainder(400) == 0 or jahr.remainder(4) == 0 and not jahr.remainder(100) == 0 # Wenn das Jahr durch 400 oder 4 aber nicht durch 100 teilbar ist, dann…
    puts("#{jahr} ist ein Schaltjahr.") # …ist es ein Schaltjahr
else
    puts("#{jahr} ist kein Schaltjahr.") # …sonst ist es kein Schaltjahr
end
