curl -s "https://audio.iskcondesiretree.com/index.php?q=f&amp;f=%2F01_-_Srila_Prabhupada%2F01_-_Lectures" | pup 'a attr{href}'
curl -s "https://prabhupadavani.org/transcriptions/bhagavad-g%C4%ABt%C4%81-introduction/" | grep -Po '(?<=href=")[^"]*' |grep media
curl -s "https://audio.iskcondesiretree.com/" | grep -Poi '<a [^>]+>' | sort  -u
