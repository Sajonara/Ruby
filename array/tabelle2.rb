# Dieses Programm nutzt eine Klasse, um mit Tabellen umzugehen

class Tabelle
    def initialize(zeilen, spalten, wert=0)
        @zmax = zeilen - 1
        @smax = spalten - 1
        @tab = (0..@zmax).collect do
            (0..@smax).collect { wert }
        end
    end

    def info
        @tab.each do |i|
            i.each do |k|
                print k, " "
            end
            puts
        end
        self
    end

    def [](z, s)
        # Liest Zelle
        if z > @zmax
            raise IndexError, "Zeile zu groß."
        end
        if s > @smax
            raise IndexError, "Spalte zu groß."
        end
        @tab[z][s]
    end

    def []=(z, s, w)
        if z > @zmax
            raise IndexError, "Zeile zu groß."
        end
        if s > @smax
            raise IndexError, "Spalte zu groß."
        end
        @tab[z][s] = w
        self
    end

    def zeile(n)
        @tab[n]
    end

    def spalte(n)
        spalte = []
        @tab.each do |zeile|
            spalte.push(zeile[n])
        end
        spalte
    end
end

a = Tabelle.new(6,8,0)
a[1,1] = "xx"
a[1,6] = "xx"
a[2,3] = "/"
a[2,4] = "-"
a[2,5] = "\\"
a[3,3] = "-"
a[3,4] = "-"
a[3,5] = "-"

a.info

p a.zeile(3)
p a.spalte(6)
