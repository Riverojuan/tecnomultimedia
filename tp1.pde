float velocidad = 9999.9;
String texto1;
PImage logo;
PImage w33;
PImage w34;
PImage w35;
PImage w36;
PImage w37;
PImage volver1;
PFont fuentenueva;

void setup() {
  size(500, 500);
  background (0);
  fill(200, 0, 0);
  logo = loadImage("logo.png");
  w33 = loadImage ("w33.jpg");
  w34 = loadImage ("w34.jpg");
  w35 = loadImage ("w35.jpg");
  w36 = loadImage ("w36.jpg");
  w37 = loadImage ("w37.jpg");
  volver1 = loadImage ("volver1.png");
  fuentenueva = loadFont ("fn.vlw");

  texto1 =( "Cast of characters \n\n\n Swan   Michael Beck \n\n\n Ajax   James Remar \n\n\n Cleon   Dorsey Wright \n\n\n Snow   Brian Tyler \n\n\n Cochise   David Harris \n\n\n Cowboy   Tom Mckitterick \n\n\n SET DECORATOR \n\n\n Fred Weiler \n\n\n Stunt Coordinator \n\n\n Craig Baxley \n\n\n Make up Artist \n\n\n Michael Maggi \n\n\n Hair Stylist \n\n\n Frank Bianco \n\n\n\n NOWHERE TO RUN \n\n Composed by Holland, Dozier  ");
  textAlign(CENTER);
}

void mouseClicked () { 
  if (mouseX > 328 && mouseY >105 && mouseX < 474 && mouseY <240 && frameCount > 1630 ) {
    frameCount =0;
  }
}
void draw() {

  println (mouseX, mouseY);
  println (frameCount);
  background (0);
  velocidad= frameCount += 1;
  image(logo, 50, 150);
  fill(0, 0, 0, 0+velocidad);
  rect (0, 0, 500, 500);
  fill(250);
  textFont(fuentenueva);
  textSize(22);


//imagenes
  if (frameCount >230)
    image (w33, 3, 3); 
  if (frameCount >230)
    image (w34, 3, 3);
  if (frameCount >550)
    image (w35, 1, 1);
  if (frameCount >1000)
    image (w36, 3, 3);
  if (frameCount >1630)
    image (w37, 3, 3);
  if (frameCount >1750)
    image (volver1, 1, 1);
  if (mousePressed && frameCount > 0); 


//texto
  if (frameCount >230)
    text( texto1, 225, 499-velocidad);
}
