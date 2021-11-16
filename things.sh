function handler() {
  echo "$EVENT_DATA"
  cd vice

  ./x128 -sound -keybuf "10 graphic 1
    20 scnclr
    30 circle 1,100,100,20
    run
  " +warp -soundbufsize 200 -soundfragsize 4 -limitcycles 1000000 -exitscreenshotvicii $1.png
  cd ..
  echo "{\"status\": \"SUCCESS\", \"data\": \"`base64 $1.png`\"}"
}
