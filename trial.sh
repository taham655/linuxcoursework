#!/bin/bash

BITCOIN_DATA=$(curl -s https://coinmarketcap.com/currencies/bitcoin/markets/)
BITCOIN_PRICE=$(echo "$BITCOIN_DATA" | grep -oP '(?<=<div class="priceValue "><span>).*?(?=</span></div>)'| tr -d '$,')
BITCOIN_DATA=$(echo "$BITCOIN_DATA" | grep -oP '(?<=<div class="statsValue">).*?(?=</div>)'| tr -d '$,')

MARKET_CAP=$(echo "$BITCOIN_DATA" | sed -n 1p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
VOLUME_24H=$(echo "$BITCOIN_DATA" | sed -n 2p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
CIRCULATING_SUPPLY=$(echo "$BITCOIN_DATA" | sed -n 3p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
MAX_SUPPLY=$(echo "$BITCOIN_DATA" | sed -n 4p | tr -d '$,' | awk '{ printf("%.0f", $1) }')


if [ -z "$BITCOIN_PRICE" ]; then
    echo "Error: empty price value"
    exit 1
fi

echo "Price: $BITCOIN_PRICE"

$(/opt/lampp/bin/mysql -u root -e "USE test; INSERT INTO bitcoin (price, timestamp, coin,market_cap, volume_24h, circulating_supple, max_supply) VALUES ($BITCOIN_PRICE, NOW(), 'Bitcoin',$MARKET_CAP,$VOLUME_24H, $CIRCULATING_SUPPLY, $MAX_SUPPLY  );") 2>&1
if [ $? -ne 0 ]; then
    echo "Error inserting value into MySQL"
    exit 1
fi

echo "Bitcoin Value inserted successfully"


echo "==================================="

DOGE_DATA=$(curl -s https://coinmarketcap.com/currencies/dogecoin/)
DOGE_PRICE=$(echo "$DOGE_DATA" | grep -oP '(?<=<div class="priceValue "><span>).*?(?=</span></div>)'| tr -d '$,')
DOGE_DATA=$(echo "$DOGE_DATA" | grep -oP '(?<=<div class="statsValue">).*?(?=</div>)'| tr -d '$,')

MARKET_CAP1=$(echo "$DOGE_DATA" | sed -n 1p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
VOLUME_24H2=$(echo "$DOGE_DATA" | sed -n 2p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
CIRCULATING_SUPPLY3=$(echo "$DOGE_DATA" | sed -n 3p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
MAX_SUPPLY4=$(echo "$DOGE_DATA" | sed -n 4p | tr -d '$,' | awk '{ printf("%.0f", $1) }')

echo "Price: $DOGE_PRICE"

$(/opt/lampp/bin/mysql -u root -e "USE test; INSERT INTO bitcoin (price, timestamp, coin,market_cap, volume_24h, circulating_supple, max_supply) VALUES ($DOGE_PRICE, NOW(), 'Dogecoin',$MARKET_CAP1,$VOLUME_24H2, $CIRCULATING_SUPPLY3, $MAX_SUPPLY4  );") 2>&1
if [ $? -ne 0 ]; then
    echo "Error inserting value into MySQL"
    exit 1
fi

echo "DOGE Value inserted successfully"

echo "==================================="

ETH_DATA=$(curl -s https://coinmarketcap.com/currencies/ethereum/)
ETH_PRICE=$(echo "$ETH_DATA" | grep -oP '(?<=<div class="priceValue "><span>).*?(?=</span></div>)'| tr -d '$,')
ETH_DATA=$(echo "$ETH_DATA" | grep -oP '(?<=<div class="statsValue">).*?(?=</div>)'| tr -d '$,')

MARKET_CAP1=$(echo "$ETH_DATA" | sed -n 1p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
VOLUME_24H2=$(echo "$ETH_DATA" | sed -n 2p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
CIRCULATING_SUPPLY3=$(echo "$ETH_DATA" | sed -n 3p | tr -d '$,' | awk '{ printf("%.0f", $1) }')
MAX_SUPPLY4=$(echo "$ETH_DATA" | sed -n 4p | tr -d '$,' | awk '{ printf("%.0f", $1) }')

echo "Price: $ETH_PRICE"

$(/opt/lampp/bin/mysql -u root -e "USE test; INSERT INTO bitcoin (price, timestamp, coin,market_cap, volume_24h, circulating_supple, max_supply) VALUES ($ETH_PRICE, NOW(), 'Dogecoin',$MARKET_CAP1,$VOLUME_24H2, $CIRCULATING_SUPPLY3, $MAX_SUPPLY4  );") 2>&1
if [ $? -ne 0 ]; then
    echo "Error inserting value into MySQL"
    exit 1
fi

echo "Etherium Value inserted successfully"


  


