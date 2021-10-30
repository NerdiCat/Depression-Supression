class button {
  float buttonx1, buttony1, buttonsizex1, buttonsizey1;
  int modex, buttont, ison;
  String buttontext; 
  button() {
    buttonsizex1=sizex/4;
    buttonsizey1=sizey/5;
  }
  void runbutton(String text, int mx, int on) {
    buttontext=text;
    clicked(on);
    drawbutton(on);
    modex=mx;
    if (buttont==2) {          //if button type is 2
      buttonsizex1=button1l/3;//use button 6 sizeing
      buttonsizey1=button1w/3;
    }
    if (buttont==1) {          //if button type is 1
      buttonsizex1=sizex/4;   //use normal button sizeing
      buttonsizey1=sizey/5;
    }
  }
  void setup(float x, float y, int t) {
    buttonx1=x;
    buttony1=y;
    buttont=t;
  }
  void clicked(int on) {
    if (on==1) {
      if (mouse==1) {  //if mouse is clicked
        if (mouseX>buttonx1&&mouseX<buttonx1+buttonsizex1&&mouseY>buttony1&&mouseY<buttony1+buttonsizey1) {  //if the mouse is over the button
          truefalsep2=1;
          if (truefalsep2==1 && truefalsep1==1) {  //if the mouse is ovor the button and the mouse is released
            mode=modex;                           //change mode to button mode
            truefalsep2=0;                        //reset
            truefalsep1=0;
          }
        }
      }    //mouse==1 end
    }
  }
  void drawbutton(int on) {
    if (on==1) {
      fill(0, 0, 255);
      rect(buttonx1, buttony1, buttonsizex1, buttonsizey1);  //make button
    }
    if (on==0) {
      fill(0,0,255);
      rect(buttonx1, buttony1, buttonsizex1, buttonsizey1);  //make button
      image(img2, buttonx1+buttonsizex1/4, buttony1);
    }
    fill(255, 0, 0);
    if (buttont==2) {    //if button type is 2 make text small
      textSize(25);
      text(buttontext, buttonx1+6+2/3, buttony1+1.75*buttonsizey1/3);
    }
    if (buttont==1) {    //if button type is 1 make text big
      textSize(50);
      text(buttontext, buttonx1+20, buttony1+1.75*buttonsizey1/3);
    }
  }
}