#!/usr/bin/env bash

# Script para mostrar o endereço IP da placa informada.

# Informe a placa.
PLACA='tun0'

IFACE=$(ip addr show ${PLACA} 2>/dev/null| grep "inet " | cut -d " " -f 6 | cut -d "/" -f 1)

if [[ "${IFACE}" == "" ]]; then
    echo ""
else
    echo "vpn: ${IFACE}"
fi