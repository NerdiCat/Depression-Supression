// start of my imp project //<>// //<>// //<>// //<>//
JSONObject json0;
JSONObject json1;
JSONObject json2;
JSONObject json3;
JSONObject json4;
JSONObject json5;
JSONObject json6;
void setup() {
  size(1280, 775);
  stuff=new button[8];
  for (int stuff1=0; stuff1<8; stuff1+=1) {
    stuff[stuff1]=new button();
  }
  stuff[1].setup(button1x, button1y, 1);  //left bottom button set up
  stuff[2].setup(button2x, button1y, 1);  //right bottom button set up
  stuff[3].setup(button3x, button1y, 1);  //mid bottom button set up
  stuff[4].setup(button1x, button4y, 1);  // left top button set up
  stuff[5].setup(button2x, button4y, 1);  // right top button set up
  stuff[7].setup(button3x, button4y, 1);  // mid top button set up
  stuff[6].setup(button6x, button6y, 2);
  gamesetup();
  bg = loadImage("TFFH background 1 v2.jpg");  //get background image
  img1 = loadImage("TFFH Seritonin copy 3.png");
  img2 = loadImage("Lock.png");
  img3 = loadImage("arrow.png");
  img4 = loadImage("arrow copy.png");
  json0 = new JSONObject();
  json1 = new JSONObject();
  json2 = new JSONObject();
  json3 = new JSONObject();
  json4 = new JSONObject();
  json5 = new JSONObject();
  json0 = loadJSONObject("data/new0.json");
  loadall();
}
void draw() {
  if (mode==0)page1();                //run start page  //<>//
  if (mode==11)page1_1();             //run High score page
  if (mode==111)page1_1_1();          //run normal highscore page
  if (mode==112)page1_1_2();          //run story mode highscore page
  if (mode==12)page1_2();             //run main page
  if (mode==121)page1_2_1();          //run free play
  if (mode==1211)page1_2_1_1();       //run mini games
  if (mode==1212)page1_2_1_2();       //run normal game page
  if (mode==12121)playgame1();        //easy
  if (mode==12122)playgame2();        //medium
  if (mode==12123)playgame3();        //hard
  if (mode==1213)page1_2_1_3();       //run unlimited game page
  if (mode==1214)page1_2_1_4();       //run charictor page
  if (mode==1215)page1_2_1_5();       //run multiplayer game page
  if (mode==123)page1_2_3();          //run story mode page
  if (mode==1231)page1_2_3_1();       //run reaplay page
  if (mode==12311)playgame4();        //story mode easy
  if (mode==12312)playgame5();        //story mode medium
  if (mode==12313)playgame6();        //story mode hard
  if (mode==1232)page1_2_3_2();       //run continue page
  if (mode==12321)if (storymodewon[1]==1) {
    mode=12313;
  } else if (storymodewon[0]==1) {
    mode=12312;
    bug1=1;
  } else {
    mode=12311;
    bug1=2;
  }
  if (mode==124)page1_2_4();          //run shop page
  if (mode==1241)page1_2_4_1();       //run upgrades page
  if (mode==1242)page1_2_4_2();       //run power ups page
  
  if (mode==13)page1_3();             //run help page
  if (mode==131)page1_3_1();          // run tips page
  if (mode==132)playgame1();  //run totorial level page
  if (mode==14) saveall();           //save
  text(mode,100,100);
  text(bla,200,100);
}

void mousePressed() {
  if (mousePressed==true) {
    if (mouseButton==LEFT) {
      mouse=1;
    }
  }
}

void mouseReleased() {
  truefalsep1=1;
}

void keyPressed() {
  keyspressedchangekeys();
}

void keyReleased() {
  if (gamemode==4) {
    truefalse5=1;
  }
}

void saveall(){
  Save1(0);
  Save1(1);
  Save1(2);
  Save1(3);
  Save1(4);
  Save1(5);
}
void Save1(int n){
  bla=1;
  mode=0;
  if(n==0){
  json0.setFloat("value", hiscore[n]);
  saveJSONObject(json0, "data/new0.json");
  }
  if(n==1){
    json1.setFloat("value", hiscore[n]);
    saveJSONObject(json1, "data/new1.json");
  }
  if(n==2){
    json2.setFloat("value", hiscore[n]);
  saveJSONObject(json2, "data/new2.json");
  }
  if(n==3){
    json3.setInt("won",storymodewon[0]);
    json3.setFloat("value", hiscore[n]);
  saveJSONObject(json3, "data/new3.json");
  }
  if(n==4){
    json4.setInt("won",storymodewon[1]);
    json4.setFloat("value", hiscore[n]);
  saveJSONObject(json4, "data/new4.json");
  }
  if(n==5){
    json5.setInt("won",storymodewon[2]);
    json5.setFloat("value", hiscore[n]);
  saveJSONObject(json5, "data/new5.json");
  }
}
void loadall(){
  Load(0);
  Load(1);
  Load(2);
  Load(3);
  Load(4);
  Load(5);
}
void Load(int n){
  if(n==0){
    json0 = loadJSONObject("data/new0.json");
  hiscore[n] = json0.getFloat("value");
  }
   if(n==1){
     json1 = loadJSONObject("data/new1.json");
  hiscore[n] = json1.getFloat("value");
  } 
  if(n==2){
    json2 = loadJSONObject("data/new2.json");
  hiscore[n] = json2.getFloat("value");
  }
  if(n==3){
    json3 = loadJSONObject("data/new3.json");
  hiscore[n] = json3.getFloat("value");
  storymodewon[0] = json3.getInt("won");
  }
  if(n==4){
    json4 = loadJSONObject("data/new4.json");
  hiscore[n] = json4.getFloat("value");
  storymodewon[1] = json4.getInt("won");
  }
  if(n==5){
    json5 = loadJSONObject("data/new5.json");
  hiscore[n] = json5.getFloat("value");
  storymodewon[2] = json5.getInt("won");
  }
}