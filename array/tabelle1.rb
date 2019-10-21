# Diese Methoden dienen der Nutzung von Tabellen (Zeilen und Spalten)
# Im Prinzip handelt es sich dabei jedoch nur um zwei ineinander verschachtelte Felder.

def tab_info(t)
    # Gibt die Tabelle aus
    t.each do |zeile|
        zeile.each do |e|
            print e, " "
        end
        puts
    end
end

def tab_zeile(tab, n)
    # Gibt die Zeile einer Tabelle zurück
    tab[n]
end

def tab_spalte(tab, n)
    # Gibt die Spalte einer Tabelle zurück
    spalte = []
    tab.each do |zeile|
        spalte.push(zeile[n])
    end
    spalte
end

def tab_zsumme(tab)
    sum = []
    tab.each do |zeile|
        x = 0
        zeile.each { |element| x += element }
        sum.push(x)
    end
    sum
end

def tab_zprodukt(tab)
    sum = []
    tab.each do |zeile|
        x = zeile[0]
        zeile.each { |element| x *= element }
        sum.push(x)
    end
    sum
end

def tab_spalten(tab)
    # Gibt die Spalten einer Tabelle als Feld zurück, mit dem man wiederum Berechnungen anstellen kann
    spalten = []
    spaltenzahl = tab[0].length
    0.upto(spaltenzahl-1) do |i|
        spalte = []
        tab.each do |zeile|
            spalte.push(zeile[i])
        end
        spalten.push(spalte)
    end
    spalten
end

def tab_ssumme(tab)
    # Summiert die Zellen jeder Tabellenspalte auf
    summen = []
    tab_spalten(tab).each do |s|
        ssumme = 0
        s.each do |e|
            ssumme += e
        end
        summen.push(ssumme)
    end
    summen
end

def tab_summe(tab)
    # Gibt die Summe aller Zellen einer Tabelle zurück
    sum = 0
    tab_zsumme(tab).each do |s|
        sum += s
    end
    sum
end

tabelle = [[1,2,3],[4,5,6],[7,8,9]]

tab_info(tabelle)

# puts tab_zeile(tabelle,2)
# puts tab_spalte(tabelle,2)
# puts tab_zsumme(tabelle)
puts tab_zprodukt(tabelle)
# p tab_spalten(tabelle)
# p tab_ssumme(tabelle)
# p tab_summe(tabelle)
