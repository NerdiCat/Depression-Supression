class serotonin {
  float serotoninx, serotoniny;
  int truefalse2=0; //reset serotonin
  int truefalse3=0; //0=reset serotonin speed 1=serotonin speed is reversed
  int truefalse4=0; //has enterd the screen
  int serotoninspeed=0;
  void drawserotonin(float minx, float maxx, float miny, float maxy, int truefalse2_2) {
    if (truefalse2_2==1) {
      truefalse2=0;
      truefalse4=0;
      truefalse2_2=0;
    }
    if (truefalse2==0) {
      serotoninx=int (random(minx, maxx));
      serotoniny=int (random(miny, maxy));
      serotoninspeed=-5;
      truefalse3=0;
      truefalse2=1;
    }
    if (serotoninx<sizex-serotoninsize) {
      truefalse4=1;
    }
    fill(0, 175, 200);
    ellipse(serotoninx, serotoniny, serotoninsize, serotoninsize);
    image(img1, serotoninx-2.1*serotoninsize, serotoniny-2*serotoninsize);
    if (truefalse3==0) {
      serotoninx+=serotoninspeed;
    }
    if (truefalse3==1) {
      serotoninspeed=5;
      serotoninx+=serotoninspeed;
    }
    //if serotonin is toching the player
    if (serotoniny+serotoninsize>playery && serotoniny-serotoninsize<playery+playersizey && serotoninx+serotoninsize>playerx && serotoninx-serotoninsize<playerx+30) {
      truefalse3=1;
    }
    if (serotoninx<serotoninsize) {
      score-=1;
      truefalse2=0;
      truefalse4=0;
    }
    if (serotoninx>sizex-serotoninsize && truefalse4==1) {
      truefalse2=0;
      score+=1;
      truefalse4=0;
    }
  }
}