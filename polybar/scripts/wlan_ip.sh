#!/bin/sh

# Script para ser na polybar.
# Mostra o endereço IP da interface de rede wireless (wlp18s0).

IFACE=$(ip addr show wlp18s0 2>/dev/null| grep "inet " | cut -d " " -f 6 | cut -d "/" -f 1)

if [ "$IFACE" = "" ];then
    echo ""
else
    echo "%{F#CDDE50}Wlan %{F#FFFFFF}$IFACE"
fi