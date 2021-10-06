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
    System.out.printf("Tails: %.2f of the time\n", totalT);
    System.out.printf("Heads: %.2f of the time\n", totalH);
    System.out.println("Fan " + total + " times");
    stop();
  }
}
