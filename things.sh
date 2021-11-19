function handler() {
  cd vice

  ./x128 -silent -sound -keybuf "`cat maze.bas`" +warp -limitcycles 8000000 -exitscreenshotvicii /tmp/$1.png 2>&1 >/dev/null
  cd ..

  RESPONSE="{\"isBase64Encoded\": true, \"headers\": {\"Content-type\": \"image/png\", \"content-disposition\":\"attachment; filename=$1.png\"}, \"statusCode\":200, \"body\":\"`base64 /tmp/$1.png`\"}"

}
