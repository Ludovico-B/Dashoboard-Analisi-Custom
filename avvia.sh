#!/bin/bash
# Script per avviare la Dashboard in locale

# Vai nella directory del progetto
cd "$(dirname "$0")"

# Attiva l'ambiente virtuale
if [ -d ".venv" ]; then
    source .venv/bin/activate
else
    echo "Errore: Ambiente virtuale (.venv) non trovato."
    echo "Per installarlo, esegui: python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt"
    exit 1
fi

# Avvia l'applicazione Streamlit
echo "Avvio della Dashboard in corso..."
streamlit run dashboard.py
