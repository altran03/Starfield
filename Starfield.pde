//your code here
Particle [] objects;
void setup()
{
  size (1000,1000);
  background(#000000);
  objects = new Particle [1000];
  for (int i = 0; i<objects.length; i++){
    objects[i] = new Particle();
  }
  for (int i = 0; i<100;i++){
    objects[i] = new OddballParticle();
  }
}

void draw()
{
  background(0);
  for (int i = 0; i<objects.length;i++){
    objects[i].show();
    objects[i].move();
  }
}
class Particle
{
  double xpos;
  double ypos;
  int Bcolor;
  double angle;
  double speed;
  int xradius;
  int yradius;
  //your code here
  Particle(){
    xpos = 500;
    ypos = 500;
    Bcolor = color ((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1,50);
    angle = (Math.random()*2*PI);
    speed = Math.random()*5;
    xradius = 20;
    yradius = 4;
}
void show(){
  fill(Bcolor);
  ellipse ((float)xpos, (float)ypos, xradius, yradius);
}
void move(){
  if (xpos < 1000 && xpos > 0){
  xpos = xpos + Math.cos(angle)*speed;
  ypos = ypos + Math.sin(angle)*speed;
  }
  else if ((xpos > 1000 || xpos < 0) && (ypos > 1000 || ypos < 0)){
    xpos = 500;
    ypos = 500;

}
}
}
class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    xpos = 500;
    ypos= 500;
    Bcolor = color ((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1,50);
    angle = (Math.random()*2*PI);
    speed = (Math.random()*5);
    xradius = 20;
    yradius=20;
  //your code here
}
}
