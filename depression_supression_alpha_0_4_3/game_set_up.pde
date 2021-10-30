void gamesetup() {
  frameRate(80);
  info=new serotonin[6];
  for (int info1=0; info1<6; info1+=1) {
    info[info1]=new serotonin();
  }
  keys=new boolean[2];
  keys[0]=false;
  keys[1]=false;
}