# Dieses Programm dient als Test für eine FTP-Verbindung

require 'net/ftp' # Implementieren der notwendigen Klasse

Net::FTP.open('sajonara.de') do |ftp| # Verbindung einrichten
    ftp.login('user', 'password') # Log-in mit passenden Daten

    ftp.chdir('prombeeren.de') # Wechsel in ein Verzeichnis (chdir = change directory)
    ftp.list('*') do |file| # Ausgabe der Dateien und Ordner
        puts file
    end
end
