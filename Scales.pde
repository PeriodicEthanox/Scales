void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for(int y = 503; y > 0; y -= 20)
    {
    for(int x = 500; x > 0; x -= 30) 
     {
       if (shift == true)
       scale(x, y);
       else
        scale(x + 15, y);
     }
     if (shift == true)
       shift = false;
      else
       shift = true;
    }
}
void scale(int x, int y) {
  fill((int)(Math.random()* 160), 111, 219);
  rect(x-25, y-50, 30, 40);
  arc(x-10, y-10, 30, 30, radians(0), radians(180));
  arc(x-10, y-10, 26, 25, radians(0), radians(180)); 
}
