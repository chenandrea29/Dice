Die bob;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	for (int x = 10; x < 500; x = x + 62)
	{ for (int y = 10; y < 500; y = y + 62) 
		{
			bob = new Die(x, y);
			bob.roll();
			bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, roll;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		roll = (int)(Math.random()*7)+1;
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50, 20);
		fill(0);
		if (roll == 1) {
			ellipse(myX + 25, myY + 25, 7, 7);
		} 
		else if (roll == 2) {
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else if (roll == 3) {
			ellipse(myX + 25, myY + 25, 7, 7);
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else if (roll == 4) {
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 15, myY + 35, 7, 7);
			ellipse(myX + 35, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);

		}
		else if (roll == 5) {
			ellipse(myX + 25, myY + 25, 7, 7);
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 15, myY + 35, 7, 7);
			ellipse(myX + 35, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else {
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 15, myY + 35, 7, 7);
			ellipse(myX + 35, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
			ellipse(myX + 15, myY + 25, 7, 7);
			ellipse(myX + 35, myY + 25, 7, 7);
		}
	}
}
