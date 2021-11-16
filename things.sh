function handler() {
  cd vice

  ./x128 -silent -sound -keybuf "10 graphic 1
    20 scnclr
    30 circle 1,100,100,20
    run
  " +warp -limitcycles 8000000 -exitscreenshotvicii /tmp/$1.png 2>&1 >/dev/null
  cd ..
  echo "{\"event_data\":\"$2\", \"status\": \"SUCCESS\", \"data\": \"`base64 /tmp/$1.png`\"}"
}
