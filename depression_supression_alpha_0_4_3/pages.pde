/*class pages {
  void page(int mode, String pagename, int pagenumber,int numberobuttons, Array String [] buttonnames) {
    if (mode==1) {
      background(0, 100, 255);
      textAlign(CENTER, TOP);
      textSize(50);
      text(pagename, sizex/2, sizey/4);
      textAlign(0, 0);                      //reset text Align
      if (numberobuttons>= 1){
      stuff[1].runbutton("high score", 11); //run button 1 
      }
      fill(0, 0, 255);
      stuff[2].runbutton("Help", 13);       //run button  2
      stuff[3].runbutton("Play", 12);       //run button 3
      fill(255, 0, 0);
      textSize(50);
      stuff[6].runbutton("back", 0);    //run back button
    }
    if (mode==2) {
      background(0, 100, 255);
      textAlign(CENTER, CENTER);
      textSize(50);
      text("text will be inserted in a later versoin ", sizex/2, sizey/2);
      textAlign(0, 0);
      stuff[6].runbutton("back", 0);    //run back button
    }
  }
}
*/
void page1() {  //titel page
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Titel page", sizex/2, sizey/4);
  textAlign(0, 0);                      //reset text Align
  stuff[1].runbutton("high score", 11,1); //run button 1 
  fill(0, 0, 255);
  stuff[2].runbutton("Help", 13,1);       //run button  2
  stuff[3].runbutton("Play", 12,1);       //run button 3
  stuff[7].runbutton("Save", 14,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_1() {  //high score page
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("Titel page", sizex/2, sizey/4);
  textAlign(0, 0);                      //reset text Align
  stuff[1].runbutton("Normal", 111,1); //run button 1 
  stuff[2].runbutton("storymode", 112,1);       //run button  2
  stuff[6].runbutton("back", 0,1);    //run back button
}

void page1_1_1() {  //high score page
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text(hiscore[0], sizex/2, sizey/4);
  text(hiscore[1], sizex/2, sizey/2);
  text(hiscore[2], sizex/2, sizey-sizey/4);
  textAlign(0, 0);
  stuff[6].runbutton("back", 11,1);    //run back button
}

void page1_1_2() {  //high score page
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text(hiscore[3], sizex/2, sizey/4);
  text(hiscore[4], sizex/2, sizey/2);
  text(hiscore[5], sizex/2, sizey-sizey/4);
  textAlign(0, 0);
  stuff[6].runbutton("back", 11,1);    //run back button
}

void page1_3() {  //help page
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Help page", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("tips", 131,1);
  fill(0, 0, 255);
  stuff[2].runbutton("tutorial", 132,1);
  stuff[6].runbutton("back", 0,1);
}

void page1_3_1() {  //tips
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(30);
  fill(255,255,255);
  rect(0,sizey/2,1280,100);
  fill(255,tipG,tipB);
  
  tipTimer+=1;
  if (tipTimer<400){
    textSize(30);
  }
  if (tipTimer>=400 && tipTimer<400+255){
    tipG+=1;
    tipB+=1;
  }
  if (tipTimer>=400+255 && tipTimer<400+256){
    tipN+=1;
  }
  if (tipTimer>=400+255 && tipTimer<400+255*2){
    if(tipN==1){
      tip = "Try to stay in the middle, so you can get to the serotonin quicker";
    }
    if(tipN==2){
      tip = "If serotonin are coming at the same time you can hit one and miss";
      tip2 = "the other to spread them out, making it easier later in the round";
    }
    if(tipN==3){
      tip = "In your head, always know what your score is, and what your score";
      tip2 = "will be when all the serotonin you've blocked hits the far wall";
    }
    if(tipN==4){
      tipN=0;
    }
    if(tipN==0){
      tip="Moving up and down can keep you from moving too much in any direction ";
    }
    tipG-=1;
    tipB-=1;
  }
  if (tipTimer>400*2+250*2){
    tipTimer=401;
  }
  text(tip, sizex/2, sizey/2);
  textAlign(CENTER,BOTTOM);
  text(tip2, sizex/2, sizey/2+100);
  textAlign(0, 0);
  stuff[6].runbutton("back", 13,1);
}

void page1_3_2() {  //tutorial
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("text will be inserted in a later versoin ", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 13,1);
}

void page1_2() {  //main page
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Main page", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("Free Play", 121,1);
  fill(0, 0, 255);
  stuff[2].runbutton("Story Mode", 123,1);
  stuff[3].runbutton("Shop", 124,1);
  stuff[6].runbutton("back", 0,1);
  fill(255, 0, 0);
  textSize(50);
  if(gamemode==1){
    gamemode=4;
    tutorialsection=0;
    truefalse2_2=1;
    time2=60;
    score=0;
    targetscoremin=int(random(4, 9));
    targetscoremax=int(random(13, 16));
    playery=sizey/2-playersizey/2;
  }
  if (gamemode==3){
    gamemode=4;
    tutorialsection=0;
    truefalse2_2=1;
    time2=60;
    score=0;
    targetscoremin=int(random(4, 9));
    targetscoremax=int(random(13, 16));
    playery=sizey/2-playersizey/2;
  }
}

void page1_2_1() {  //free play page
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Free play page", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("Normal", 1212,1);
  fill(0, 0, 255);
  stuff[2].runbutton("Unlimited", 1213,0);
  stuff[3].runbutton("Charictor", 1214,0);
  stuff[4].runbutton("Mini Games", 1211,0);
  stuff[5].runbutton("Multiplayer", 1215,0);
  stuff[6].runbutton("back", 12,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_1_1() {//mini games
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("page under construction", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 121,1);
}

void page1_2_1_2() {  //normal
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Normal", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("easy", 12121,1);
  fill(0, 0, 255);
  stuff[2].runbutton("Hard", 12123,1);
  stuff[3].runbutton("Medium", 12122,1);
  stuff[6].runbutton("back", 121,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_1_3() {  //unlimited
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Unlimited", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("easy", 12121,1);
  fill(0, 0, 255);
  stuff[2].runbutton("Hard", 12123,1);
  stuff[3].runbutton("Medium", 12122,1);
  stuff[6].runbutton("back", 121,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_1_4() {  //charictor select
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("page under construction", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 121,1);
}

void page1_2_1_5() {  //Multiplayer
  background(0, 100, 255);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("page under construction", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 121,1);
}

void page1_2_3() {  //story mode
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Story mode", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("replay", 1231,1);
  fill(0, 0, 255);
  stuff[2].runbutton("continue", 1232,1);
  stuff[6].runbutton("back", 12,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_3_2() {  //continue
  background(0, 100, 255);
  textAlign(0, 0);
  stuff[1].runbutton("Depresion", 12321,1);
  fill(0, 0, 255);
  stuff[2].runbutton("ADHD", 12322,0);
  stuff[6].runbutton("back", 123,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_3_1() {  //reaplay
  background(0, 100, 255);
  textAlign(0, 0);
  stuff[1].runbutton("Easy", 12311,1);
  stuff[3].runbutton("Medium", 12312,storymodewon[0]);
  stuff[2].runbutton("Hard", 12313,storymodewon[1]);
  stuff[6].runbutton("back", 123,1);
  textSize(50);
}

void page1_2_4() {  //shop page
  background(0, 100, 255);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Shop", sizex/2, sizey/4);
  textAlign(0, 0);
  stuff[1].runbutton("Upgrades", 1241,1);
  fill(0, 0, 255);
  stuff[2].runbutton("Power ups", 1242,1);
  stuff[6].runbutton("back", 12,1);
  fill(255, 0, 0);
  textSize(50);
}

void page1_2_4_1() {  //upgrades
  background(0, 100, 255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("page under construction", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 124,1);
}

void page1_2_4_2() {  //power ups
  background(0, 100, 255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("page under construction", sizex/2, sizey/2);
  textAlign(0, 0);
  stuff[6].runbutton("back", 124,1);
}