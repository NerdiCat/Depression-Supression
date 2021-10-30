void gameover() { //<>//
  background(0, 255, 255);
  textAlign(0, 0);
  fill(0, 0, 255);
  stuff[6].runbutton("back", 12,1);
  fill(255, 0, 0);
  textSize(75);
  text("Game Over", sizex/4, sizey/4);
  text("Press R to restart", sizex/4, sizey/2);
  if (keyPressed==true) {
    if (key=='r') {
      gamemode=0;
      truefalse2_2=1;
      time2=60;
      score=0;
      targetscoremin=int(random(4, 9));
      targetscoremax=int(random(13, 16));
      playery=sizey/2-playersizey/2;
    }
    if (key=='t') {
      gamemode=4;
      truefalse2_2=1;
      tutorialsection=0;
      time2=60;
      score=0;
      targetscoremin=int(random(4, 9));
      targetscoremax=int(random(13, 16));
      playery=sizey/2-playersizey/2;
    }
  }
}

void victory() {
  background(0, 0, 255);
  if (mode==12121){          //if normal mode easy
    if (time2>hiscore[0]){
      hiscore[0] = time2;
    }
  }
  if (mode==12122){          //if normal mode medium
    if (time2>hiscore[1]){
      hiscore[1] = time2;
    }
  }
  if (mode==12123){
    if (time2>hiscore[2]){
      hiscore[2] = time2;
    }
  }
  if(mode==12311){           //if story mode easy
    storymodewon[0]=1;
    if (time2>hiscore[3]){
      hiscore[3] = time2;
    }
  }
  if(mode==12312){           //if story mode medium
    storymodewon[1]=1;
    if (time2>hiscore[4]){
      hiscore[4] = time2;
    }
  }
  
  if(mode==12313){
    storymodewon[2]=1;
    if (time2>hiscore[5]){
      hiscore[5] = time2;
    }
  }
  textAlign(0, 0);
  fill(0, 0, 255);
  

  fill(255, 255, 0);
  textSize(75);
  text("you win", sizex/4, sizey/4);
  text("Press R to restart", sizex/4, sizey/2);
  stuff[6].runbutton("back", 12,1);
  if (keyPressed==true) {
    if (key=='r') {
      gamemode=0;
      truefalse2_2=1;
      time2=60;
      score=0;
      targetscoremin=int(random(4, 9));
      targetscoremax=int(random(13, 16));
      playery=sizey/2-playersizey/2;
    }
    if (key=='t') {
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
}