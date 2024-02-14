int baseCase;
public void setup()
{
  baseCase = 20;
  size(1000,1000);
}
public void draw()
{
  sierpinski(10,450,1500);
}
public void keyPressed()//optional
{
  if(key == 'a')
  {
    if(baseCase > 5)
    {
      baseCase-=1;
    }
  } else if(key == 'd')
  {
    baseCase+=1;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len < baseCase)
  {
    fill(250 * (float)Math.random(),250 * (float)Math.random(),250 * (float)Math.random());
    ellipse(x,y,len,len);
  } else
  {
    sierpinski(x+(len * (3/2))/2,y,len/2);
    sierpinski(x - (len * (3/2))/2, y, len/2);
    sierpinski(x, y - (len * (3/2))/2, len/2);
    sierpinski(x, y + (len * (3/2))/2, len/2);
  }
}
