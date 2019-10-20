# Den Umgang mit Hashes ausprobieren

woerterbuch = {
    :hello => :Hallo,
    :world => :Welt
}

puts "#{woerterbuch[:hello]} #{woerterbuch[:world]}"

# Ausgabe mit einem Index
k = woerterbuch.keys
v = woerterbuch.values
k.each_index do |i|
    puts k[i]
    puts v[i]
end

# Ausgabe mit each_pair
woerterbuch.each_pair do |k, v|
    puts k
    puts v
end

# Ausgabe mit each_key
woerterbuch.each_key do |k|
    puts k
    puts woerterbuch[k]
end

# addieren
n = {
    :nerd => :Nerd
}
w = woerterbuch.dup
n.each_pair do |k,v|
    w[k] = v
end
puts w


# key?
puts "Ja, dieser Schlüssel existiert!" if woerterbuch.key? :hello

# value?
puts "Ja, dieser Wert existiert!" if woerterbuch.value? :Hallo

# empty?
puts "Nein, dieses Feld ist nicht leer." unless woerterbuch.empty?

# length
puts woerterbuch.length

# delete
woerterbuch.delete :hello
puts "Ich wurde gelöscht." unless woerterbuch.key? :hello
