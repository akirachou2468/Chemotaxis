
Walker[] bob;
void setup()
{
    size(300,300);
    bob = new Walker[1000];
    for(int i = 0; i < bob.length; i++)
    {
        bob[i] = new Walker();
    }
}
void draw()
{
    background(0); 
    for (int i = 0; i < bob.length; i++)
    {
        bob[i].walk();
        bob[i].show();
       
    }
}

class Walker
{
    int myX, myY;
    int x,y,z;
    Walker()
    {
        myX = 150;
        myY = 150;
        x = (int)(Math.random()*256); 
        y = (int)(Math.random()*256); 
        z = (int)(Math.random()*256); 
    }
    void walk()
    {
        if(mouseX > myX)
            myX = myX + (int)(Math.random()*5)-1;
        else
            myX = myX +  (int)(Math.random()*5)-3;
    

        if(mouseY > myY)
            myY = myY + (int)(Math.random()*5)-1;
        else
            myY = myY +  (int)(Math.random()*5)-3;
    }
    void show()
    {
        fill(x,y,z);
        ellipse(myX, myY, 3,3);
    }
    
}