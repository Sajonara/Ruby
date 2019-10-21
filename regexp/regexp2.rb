# Weiteres Regex-Beispiel, um Inhalte aus einer Webseite aufzustöbern
# Weiterer Code in html1.rb, hier nur Probe aufs Exempel

text = '<td>Entwickler:</td><td width="233" bgcolor="#000000"><a class="sidemenu" href="company.php?pid=502">Frozenbyte</a>'

gefunden = text.match(/Entwickler\:.+\>(\w+)\<.+/)

puts $1

str = 'Leopold Auers Dönerbude in der Sascha Lobo immer einkaufen geht.'

namen = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)

p namen
