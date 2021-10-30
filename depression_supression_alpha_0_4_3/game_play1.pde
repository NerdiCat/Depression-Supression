void gameplay1() { //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  background(bg);
  fill(0, 175, 200);//player code start
  rect(playerx, playery, playersizex, playersizey); 
  checkkeys(); 
  info[1].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[2].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[3].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  truefalse2_2=0;
  textSize(25);
  text(score, 50, 50);
  if (score>targetscoremin && score<targetscoremax) {
    time+=0.0125;
  } else {
    time=0;
  }
  if (time>10) {
    gamemode=1;
  }
  text(targetscoremin+1, 100, 50);
  text(targetscoremax-1, 150, 50);
  text(time, 200, 50);
  text(time2, 300, 50);
  time2-=0.0125;
  if (time2<0) {
    gamemode=3;
  }
  
}
//                                                                                                              gameplay 1end
void gameplay2() {
  background(bg);
  fill(0, 175, 200);//player code start
  rect(playerx, playery, playersizex, playersizey); 
  checkkeys();
  info[1].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[2].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[3].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[4].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  truefalse2_2=0;
  textSize(25);
  text(score, 50, 50);
  if (score>targetscoremin && score<targetscoremax) {
    time+=0.0125;
  } else {
    time=0;
  }
  if (time>10) {
    gamemode=1;
  }
  text(targetscoremin+1, 100, 50);
  text(targetscoremax-1, 150, 50);
  text(time, 200, 50);
  text(time2, 300, 50);
  time2-=0.0125;

  if (time2<0) {
    gamemode=3;
  }
}
//gameplay 2 end
void gameplay3() {
  background(bg);
  fill(0, 175, 200);//player code start
  rect(playerx, playery, playersizex, playersizey); 
  checkkeys();

  info[1].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[2].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[3].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  info[4].drawserotonin(sizex+serotoninsize, sizex+50, 0+serotoninsize, sizey-serotoninsize, truefalse2_2);
  truefalse2_2=0;
  textSize(25);
  text(score, 50, 50);
  if (score>targetscoremin+1 && score<targetscoremax-1) {
    time+=0.0125;
  } else {
    time=0;
  }
  if (time>10) {
    gamemode=1;
  }
  text(targetscoremin+2, 100, 50);
  text(targetscoremax-2, 150, 50);
  text(time, 200, 50);
  text(time2, 300, 50);
  time2-=0.0125;

  if (time2<0) {
    gamemode=3;
  }
}

void playgame1() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    gameplay1();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}

void playgame2() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    gameplay2();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}

void playgame3() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    gameplay3();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}

void playgame4() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    storygameplay1();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}

void playgame5() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    storygameplay2();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}

void playgame6() {
  if (gamemode==4) {
    tutorial();
  }
  if (gamemode==0) {
    storygameplay3();
  }
  if (gamemode==1) {
    victory();
  }
  if (gamemode==3) {
    gameover();
  }
}