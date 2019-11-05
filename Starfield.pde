Particle[] parts = new Particle[1000];
void setup()
{
	size(400,600);
	for(int i = 0; i < parts.length; i++){
		parts[i] = new Particle();
	}
	parts[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < parts.length; i++){
		parts[i].move();
	}
	parts[0].show();
}
class Particle
{
	double myX, myY, myAngle;
	int mySpeed;
	int myColor;
	Particle()
	{
		myX = 200;
		myY = 300;
		myAngle = (Math.random()*2*Math.PI);
		mySpeed = (int) (Math.random()*10);
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move()
	{
		myX +=  (Math.cos(myAngle) * mySpeed);
		myY +=  (Math.sin(myAngle) * mySpeed);
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}

class OddballParticle //inherits from Particle
{
	double myX, myY, myAngle;
	int mySpeed;
	int myColor;
OddballParticle()
	{
		myX = 200;
		myY = 300;
		myAngle = (Math.random()*2*Math.PI);
		mySpeed = (int) (Math.random()*10);
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move()
	{
		myX +=  (Math.cos(myAngle) * mySpeed);
		myY +=  (Math.sin(myAngle) * mySpeed);
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 50, 50);
	}
}


