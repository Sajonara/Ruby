# Dieses Programm gibt gleich sechs Zufallszahlen aus, und zwar Lottozahlen der Ziehung 6 aus 49. Es lässt sich leicht anpassen auf den Euro Jackpot.

a = rand(49) + 1
b = rand(49) + 1
if b == a
    b = rand(49) + 1
end
c = rand(49) + 1
if c == a || c == b
    c = rand(49) + 1
end
d = rand(49) + 1
if d == a || d == b || d == c
    d = rand(49) + 1
end
e = rand(49) + 1
if e == a || e == b || e == c || e == d
    e = rand(49) + 1
end
f = rand(49) + 1
if f == a || f == b || f == c || f == d || f == e
    f = rand(49) + 1
end

puts("Die Lottozahlen lauten: #{a}, #{b}, #{c}, #{d}, #{e}, #{f}. Alle Angaben ohne Gewähr.")
