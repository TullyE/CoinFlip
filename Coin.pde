class Coin
{
  private int myX;
  private int myY;
  private int dim;
  private boolean heads;
  Coin(int x, int y, int dim)
  {
    this.myX = x;
    this.myY = y;
    this.dim = dim;
    flip();
  }
  void show()
  {
    flip();
    noStroke();
    fill(255, 255, 0);
    ellipse(myX, myY, dim, dim);
    fill(0);
    if(heads == true)
    {
      noFill();
      stroke(3);
      ellipse(myX, myY, (4/5 * dim), (4/5 * dim));
      ellipse(myX - dim/10, myY - dim/10, dim/5, dim/5);
      ellipse(myX + dim/10, myY - dim/10, dim/5, dim/5);
      arc(myX, myY + dim/10, (1.5/5 * dim), (1.5/5 * dim), radians(0), radians(180));
    }
    else
    {
      fill(0);
      rect(myX - dim/5, myY - dim/8, dim/2.5, dim/2.5);
      triangle(myX, myY - dim/2.5, myX - dim/3.5, myY, myX + dim/3.5, myY);
    }
  }
  
  void flip()
  {
    this.heads = (int) (Math.random() * 100) > 85 ? true : false;
    //this.heads = false;
    //System.out.println(this.heads);
  }
  
  boolean getHeads()
  {
    //System.out.println("<<Value Returned>>");
    return this.heads;
  }
}
