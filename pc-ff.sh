clear
download_and_run() {
  local port=$1
  local index=$2

  docker run -p $port:80 -e DISPLAY=:0.0 -d stream_ff > /dev/null 2>&1
  echo ""
  echo "Access Link $index: https://localhost:$port"
  echo ""
}

read -p "Enter the number of PC: " PC

for ((i = 1; i <= PC; i++)); do
  port=$((8000 + i))
  download_and_run $port $i
done
