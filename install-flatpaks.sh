#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

## ADD REMOTE
echo "[install-flatpaks] add flathub remote"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## INSTALL FLATPAKS
echo "[install-flatpaks] installing flatpaks"
flatpak install -y org.kicad.KiCad org.freecadweb.FreeCAD org.gnome.gitg com.mattjakeman.ExtensionManager org.ferdium.Ferdium org.qgis.qgis/x86_64/stable org.kde.kolourpaint minder com.ultimaker.cura io.podman_desktop.PodmanDesktop com.vscodium.codium org.onlyoffice.desktopeditors org.mozilla.firefox

## COMPLETE
echo "[install-flatpaks]"
echo "--- COMPLETE ---"