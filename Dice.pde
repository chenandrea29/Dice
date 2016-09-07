Die bob;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{	
	int r = (int)(Math.random()*256);
	int g = (int)(Math.random()*256);
	int b = (int)(Math.random()*256);
	int total = 0;		
	background(r, g, b);
	for (int x = 10; x < 500; x = x + 62)
	{ for (int y = 10; y < 500; y = y + 62) 
		{
			bob = new Die(x, y);
			bob.roll();
			bob.show();
			total = total + bob.roll;
		}
	}
	fill(0, 0, 0, 150);
	textSize(200);
	textAlign(CENTER, CENTER);
	text(total, 250, 225);
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
		stroke(0);
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
