#!/bin/sh

# Script para mostra o endereço ip da interface ethernet.

IFACE=$(ip addr show enp22s0 2>/dev/null| grep "inet " | cut -d " " -f 6 | cut -d "/" -f 1)

if [ "$IFACE" = "" ];then
    echo ""
else
    echo "%{F#00B7FF}Eth %{F#FFFFFF}$IFACE"
fi