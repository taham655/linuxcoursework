#!/bin/bash

PRICES = $(curl -s https://coinmarketcap.com/currencies/bitcoin/markets/ | grep -oP '(?<=<div class="priceValue "><span>).*?(?=</span></div>)')

$(/opt/lampp/bin/mysql -u root -e "use test; insert into bitcoin values(6,'$PRICES');")


