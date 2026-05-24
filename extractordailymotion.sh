#!/bin/bash
clear
echo "=============================================="
echo "    EXTRACTOR DE ENLACES EN VIVO DAILYMOTION   "
echo "=============================================="
echo ""
read -p "Introduce la URL del canal o en vivo de Dailymotion: " URL
if [ -z "$URL" ]; then
    echo -e "\n[!] Error: No introdujiste ninguna URL."
    exit 1
fi
echo -e "\n[+] Extrayendo el enlace de la mejor calidad disponible..."
echo "--------------------------------------------------------"
LIVE_LINK=$(yt-dlp -g -f "best" "$URL" 2>/dev/null)
if [ -z "$LIVE_LINK" ]; then
    echo "[!] No se pudo extraer el enlace. Asegúrate de que el canal esté EN VIVO actualmente."
else
    echo -e "\n[✔] ENLACE EN VIVO ENCONTRADO:\n"
    echo "$LIVE_LINK"
    echo -e "\n--------------------------------------------------------"
    echo "[*] Puedes copiar este enlace y reproducirlo en VLC, IPTV Player, etc."
fi
