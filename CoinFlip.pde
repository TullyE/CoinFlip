//main
//PFont mono = createFont("andalemo.ttf", 128);
int iters = 50;
double tails = 0, heads = 0, total = 0;

Coin myC = new Coin(250, 250, 100);
void setup()
{
 size(500, 500);
}

void draw()
{
  if(total < iters)
  {
    background(255);
    //textFont(mono);

    myC.show();
    total += 1;
    if(myC.getHeads())
    {
      heads += 1;
    }
    else
    {
      tails += 1;
    }
    text(total + "/" + iters, 100, 100);
  }
  else
  {
    double totalT = (tails/total * 100);
    double totalH = (heads/total * 100);
    text("Tails: " + totalT + "% of the time", 15, height-100);
    text("Heads: " + totalH + "% of the time, 15, height-75);
    text("Ran " + total + " times", 15, height-50);
    //stop();
  }
}
