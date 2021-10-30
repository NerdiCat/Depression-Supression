void tutorial() {
  background(bg);
  fill(0, 175, 200);//player code start
  rect(playerx, playery, playersizex, playersizey);
  textSize(25);
  text(score, 50, 50);
  text(targetscoremin+1, 100, 50);
  text(targetscoremax-1, 150, 50);
  text(time, 200, 50);
  text(time2, 300, 50);
  fill(0, 0, 0);
  if (tutorialsection==10 && truefalse5==1) {
    if(mode != 132){
    gamemode=0; 
    }
    if(mode==132){
      mode=13;
      tutorialsection=0;
    }
    truefalse5=0;
  }
  if (tutorialsection==9 && truefalse5==1) {
    textSize(text+35);
    text("press C to start", sizex/4, sizey/4);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=10;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==8 && truefalse5==1) {
    textSize(text-10);
    text("Then text will say “if the score goes to high the person might get addicted to SSRIs", sizex/32, sizey/4); 
    text("and if the score is to low the person will still be depressed", sizex/32, sizey/4+50);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=9;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==7 && truefalse5==1) {
    textSize(text-2);
    text("In each level you have to stay in between the", sizex/32, sizey/4); 
    text("second, and third number for 10 seconds", sizex/32, sizey/4+50);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=8;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==6 && truefalse5==1) {
    textSize(text);
    text("This is your score", sizex/8, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    image(img4, 15,75);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=7;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==5 && truefalse5==1) {
    textSize(text);
    text("you move using W, and S. W to go up and S to go down", sizex/64, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=6;
        truefalse5=0;
      }
    }
  } 
  if (tutorialsection==4 && truefalse5==1) {
    textSize(text);
    text("you can bounce them back to the right wall to gain a point", sizex/8-50, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=5;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==3 && truefalse5==1) {
    textSize(text+5);
    text("Every time an enemy hits the left wall you lose a point", sizex/32, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=4;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==2 && truefalse5==1) {
    textSize(text+5);
    text("This is serotonin", sizex/16, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    image(img1, sizex/4, sizey/2);
    image(img3, sizex/4+100,sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=3;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==1 && truefalse5==1) {
    textSize(text+5);
    text("This is your Character", sizex/10, sizey/4);
    text("press C to continue", sizex/4, sizey/1.5);
    image(img3, playerx+30, playery);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=2;
        truefalse5=0;
      }
    }
  }
  if (tutorialsection==0) {
    textSize(text+35);
    text("How to play", sizex/4, sizey/4);
    text("press C to continue", sizex/4, sizey/2);
    if (keyPressed==true) {
      if (key=='c') {
        tutorialsection=1;
        truefalse5=0;
      }
    }
  }
}

void pause(){
  textAlign(CENTER,CENTER);
  textSize(text+35);
  text("Pause",sizex/2,sizey/2);
  textSize(text);
  text("Press C to continue", sizex/4, sizey-sizey/4);
  text("Press Q to continue", sizex/4, sizey/4);
  if (keyPressed==true){
    if(key=='q'){
      
    }
    if(key=='c'){
      
    }
  }
}