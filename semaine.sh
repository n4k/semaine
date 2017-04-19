#!/bin/bash

curl -s 'http://fr.weeknumber52.com/getdate.php?lang=fr&tz=Europe/Berlin' -H 'Host: fr.weeknumber52.com' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0' -H 'Accept: text/html, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'DNT: 1' -H 'X-Requested-With: XMLHttpRequest' -H 'Referer: http://fr.weeknumber52.com/' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' | grep Semaine|head -n1|tr -d " "|cut -f4 -d"e"|cut -f1 -d"<"  | toilet -f mono12 -F border:gay
