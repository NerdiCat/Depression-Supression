int sizex=1280;
int sizey=775;
float button1x=sizex/8-20;
float button1y=sizey/4+sizey/2;
float button1l=sizex/4;
float button1w=sizey/5;
float button2x=sizex-button1x-button1l;
float button2y=sizey/4+sizey/2;
float button3x=button1x+button1l+20;
float button3y=button1y;
float button4x=button1x;
float button4y=sizey/4+sizey/2-button1w-20;
float button5x=button2x;
float button5y=sizey/4+sizey/2-button1w-20;
float button6l=button1l/3;
float button6w=button1w/3;
float button6x=sizex-20-button6l;
float button6y=20;
button stuff[];
int mode =0;
int mouse=0;        //1=mouse clicked 0=not clicked
int truefalsep1=0;  //1=mouse over the button 0=not over button
int truefalsep2=0;  //1=mouse realesed 0=not realesed
int bla;

//game variabels

float playersizex=30;  
float playersizey=3*playersizex;
float playerx=sizex/4-playersizex;
float playery=sizey/2-playersizey/2;
float playerspeedy=0;
float serotoninsize=playersizey/4;
int score=0;
serotonin info[];
int targetscoremin=int(random(4, 9));
int targetscoremax=int(random(13, 16));
float time=0;  //amount of time with score in the taget range
float time2=60;  // time left in round
int gamemode=4;  //0=gameplay1 1=victory 3=gameover 4=tutorial
int tutorialsection=0;  
int truefalse5=0;  //1=key released 0=key pressed
int text=40;  //tutorial text size
int truefalse2_2 =0;  //reaset
int bug1 =0;
boolean[] keys;
int playgame=0;
PImage bg;      //bacground image
PImage img1;    //serotonin
PImage img2;    //lock
PImage img3;    //arrow
PImage img4;    //up arrow
float SR; //serotonin rotate
String [] buttonnames;
float[] hiscore = new float[7];
float showhiscore;
int[] storymodewon = new int[3];{
storymodewon[0] = 0;  // Assign value to first element in the array
storymodewon[1] = 0; // Assign value to second element in the array
storymodewon[2] = 0;  // Assign value to third element in the array
}
float tipTimer;
float tipG;
float tipB;
String tip="Moving up and down can keep you from moving too much in any direction";
String tip2=" ";
int tipN=0;