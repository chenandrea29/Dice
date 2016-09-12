Die bob;
int numClicks, averageTotal, averageRoll, total, r, g, b;
int sum = 0;


void setup()
{
	size(500, 550);
	noLoop();
}
void draw()
{	
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);
	total = 0;
	numClicks++;
	background(255);
	for (int i = 10; i < 500; i += 62)
	{ for (int j = 10; j < 500; j += 62) 
		{
			bob = new Die(j, i);
			bob.roll();
			bob.show();
			total = total + bob.value;
		}
	}
	averageRoll = (int)(total/64);
	fill(0, 0, 0, 150);
	textSize(200);
	textAlign(CENTER, CENTER);
	text(total, 250, 225);
	fill(0);
	textSize(15);
	textAlign(LEFT, TOP);
	text("Number of Clicks: " + numClicks, 25, 510);
	textAlign(RIGHT, TOP);
	text("Average Total: " + averageTotal, 475, 510);
	textAlign(CENTER, TOP);
	text("Average Roll: " + averageRoll, 250, 510);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		value = (int)(Math.random()*7)+1;
		sum = sum + value;
		averageTotal = (int)(sum/numClicks);
	}
	void show()
	{
		noStroke();
		fill(r, g, b);
		rect(myX, myY, 50, 50, 20);
		fill(255);
		if (value == 1) {
			ellipse(myX + 25, myY + 25, 7, 7);
		} 
		else if (value == 2) {
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else if (value == 3) {
			ellipse(myX + 25, myY + 25, 7, 7);
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else if (value == 4) {
			ellipse(myX + 15, myY + 15, 7, 7);
			ellipse(myX + 15, myY + 35, 7, 7);
			ellipse(myX + 35, myY + 15, 7, 7);
			ellipse(myX + 35, myY + 35, 7, 7);
		}
		else if (value == 5) {
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
