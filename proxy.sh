# meant to be used with brightdata.com, add to your bashrc

use_proxy() {
  # test url https://geo.brdtest.com/mygeo.json
  if [ -z "$1" ]; then
    echo "Usage: get_proxy <url> [country_iso]"
    echo "country_iso: 
    us – United States 
    gb – United Kingdom 
    de – Germany 
    fr – France 
    ca – Canada 
    au – Australia 
    in – India 
    nl – Netherlands 
    jp – Japan 
    ru – Russia"
    return 1
  fi

  local url="$1"
  local country="$2"

  if [ -n "$country" ]; then
    country="-country-$country"
  fi

  curl --proxy brd.superproxy.io:33335 --proxy-user <your user>${country}:<your password> -k "$url"
}

