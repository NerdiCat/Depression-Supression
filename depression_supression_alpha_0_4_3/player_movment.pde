void checkkeys() { //<>//
  if (keys[0]==true) {
    playerspeedy=0-7;
  }
  if (keys[1]==true) {
    playerspeedy=7;
  }
  if (keys[0]==false && keys[1]==false) {
    playerspeedy=0;
  }

  playery+=playerspeedy;
  if (playery<0) {
    keys[1]=false;
    keys[0]=false;
    playery=1;
  }
  if (playery>sizey-playersizey) { //<>//
    keys[1]=false;
    keys[0]=false;
    playery=sizey-playersizey-1;
  }//player code end
}
void keyspressedchangekeys() {
  if (keyPressed==true) {
    if (key=='w') {
      keys[0]=true;
    } else {
      keys[0]=false;
    }
    if (key=='s') {
      keys[1]=true;
    } else {
      keys[1]=false;
    }
  }
}
/*
float fade(float c){
    c+=1;
  return(c);
}
*/