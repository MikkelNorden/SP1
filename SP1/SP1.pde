int boxWidth = 400;
int boxHeight = 30;
int markWidth = 16;
int flagWidth = 70;
String[] countryNames = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY", "PORTUGAL", "SPAIN", "MOROCCO", "IRAN", "FRANCE", "AUSTRALIA", "PERU", "DENMARK", "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
int countryValue = 0;
String[] groupNames = {"GROUP A", "GROUP B", "GROUP C", "GROUP D"};
int groupValue = 0;

void setup() {
  size(900, 400);
  background(20, 40, 60);
  noStroke();
  textSize(30);
  PImage[] countryImages = {loadImage("Russia.png"), loadImage("SaudiArabia.png"), loadImage("Egypt.png"), loadImage("Uruguay.png"), loadImage("Portugal.png"), loadImage("Spain.png"), loadImage("Morocco.png"), loadImage("Iran.png"), loadImage("France.png"), loadImage("Australia.png"), loadImage("Peru.png"), loadImage("Denmark.png"), loadImage("Argentina.png"), loadImage("Iceland.png"), loadImage("Croatia.png"), loadImage("Nigeria.png")};
  int imageValue = 0;
  fill(255);
  rect(448, 0, 4, 400);
  for(int boxX = 24; boxX <= 474; boxX += 450) {
    for(int boxY = 30; boxY <= 350; boxY += 40){
      if(boxY != 190) {
        if(boxY < 190){
          drawBox(boxX, boxY, boxWidth, boxHeight, markWidth, color(0, 200, 255), countryNames[countryValue]);
          countryValue++;
        }
        if(boxY > 190){
          drawBox(boxX, boxY, boxWidth, boxHeight, markWidth, color(255, 255, 0), countryNames[countryValue]);
          countryValue++;
        }
      }
    }
  }
  
  textSize(20);
  for(int textX = 184; textX <= 634; textX += 450){
    for(int textY = 20; textY <= 220; textY += 200){
      if(textY < 120) {
        fill(0, 200, 255);
        text(groupNames[groupValue], textX, textY);
        groupValue++;
      }
      if(textY > 120) {
        fill(255, 255, 0);
        text(groupNames[groupValue], textX, textY);
        groupValue++;
      }
    }
  }
  
  for(int i = 0; i < 16; i++){
    countryImages[i].resize(flagWidth, boxHeight);
  }
  
  for(int flagX = 24; flagX <= 474; flagX += 450){
    for(int flagY = 30; flagY <= 350; flagY += 40){
      if(flagY != 190) {
        image(countryImages[imageValue], flagX, flagY);
        imageValue++;
      }
    }
  }
}

void draw(){
}

void drawBox(int boxX, int boxY, int boxWidth, int boxHeight, int markWidth, color markColor, String countryName){
  fill(255);
  rect(boxX, boxY, boxWidth - markWidth, boxHeight);
  fill(markColor);
  rect(boxX + boxWidth - markWidth, boxY, markWidth, boxHeight);
  fill(0);
  text(countryName, boxX + 90, boxY + 25);
}
