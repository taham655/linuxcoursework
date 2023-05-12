function bitcoin_price(){
	curl -o output.txt https://coinmarketcap.com/currencies/bitcoin/markets/ | grep -oP '(?<=<div class="priceValue "><span>).*?(?=</span></div>)'
}
