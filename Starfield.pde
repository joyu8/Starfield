Star[] boom = new Star[100];
void setup()
{
  background(0);
  size(400, 400);
  noStroke();
  for(int i = 0; i < boom.length; i++)
    boom[i] = new Star();
  boom[0] = new Planet();
  boom[20] = new Planet();
  boom[100] = new Planet();

}
void draw()
{
  background(0);
  for(int i = 0; i < boom.length; i++){
    boom[i].show();
    boom[i].drift();
  }
}
class Star
{
  protected double myX, myY, speed, angle, mySize;
  //int myOpacity;
  Star()
  {
    myX = 200;
    myY = 200;
    speed = (Math.random()*10);
    angle = (Math.random()*2)*Math.PI;
  }
 
  void show()
  {
    fill(255);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
 
  void drift()
  {
    mySize = mySize + 0.02;
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
    if(mySize > 5)
      mySize = 5;
    if(myX > 401 || myY > 401){
      myX = 200;
      myY = 200;
      mySize = 0;    
    } else if(myX < -1 || myY < -1){


      myX = 200;
      myY = 200;
      mySize = 0;
    }
  }
}

class Planet extends Star
{
  Planet()
  {
  }
  void show()
  {
    int myColor = (int)(Math.random()*255);
    fill(myColor, 0, 100);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
 
  void drift()
  {
    mySize = mySize + 0.1;
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
    if(mySize > 10)
      mySize = 10;
    if(myX > 401 || myY > 401)
    {
      myX = 200;
      myY = 200;
      mySize = 0;  
    }
  }
}
