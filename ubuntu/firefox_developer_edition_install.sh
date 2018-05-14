#!/usr/bash
wget https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US -O firefoxdeveloperedition.tar.bz2
sudo tar xjf firefoxdeveloperedition.tar.bz2 -C /opt
# sudo ln -s /opt/firefox/firefox /usr/bin/firefox
# create new icon for Firefox Developer Edition browser
sudo chown -R $USER /opt/firefox

nano ~/.bashrc
export PATH=/opt/firefox/firefox:$PATH

#create launcher for Unity
cat > /usr/share/applications/FirefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Version=1.0
Name=Firefox Developer Edition
GenericName=Web Browser
Exec=/opt/firefox/firefox
Terminal=false
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;Favorites;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognito
EOL

cp -rp /usr/share/applications/FirefoxDeveloperEdition.desktop /home/$USER/Desktop
chmod +x FirefoxDeveloperEdition.desktop
