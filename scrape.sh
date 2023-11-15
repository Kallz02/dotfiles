curl -s "https://audio.iskcondesiretree.com/index.php?q=f&amp;f=%2F01_-_Srila_Prabhupada%2F01_-_Lectures" | pup 'a attr{href}'
curl -s "https://prabhupadavani.org/transcriptions/bhagavad-g%C4%ABt%C4%81-introduction/" | grep -Po '(?<=href=")[^"]*' |grep media
curl -s "https://audio.iskcondesiretree.com/" | grep -Poi '<a [^>]+>' | sort  -u
curl -s "https://audio.iskcondesiretree.com/index.php?q=f&f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R%2FHis_Grace_Krishna_Das_Prabhu%2FPrabhupada_Lectures_with_Tamil_Translations" | grep -Po '(?<=href=")[^"]*' | sort -u
curl -s "https://audio.iskcondesiretree.com/index.php?q=f&f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R%2FHis_Grace_Krishna_Das_Prabhu%2FPrabhupada_Lectures_with_Tamil_Translations" | grep -Po '(?<=href=")[^"]*' | sort -u | grep '^/'
