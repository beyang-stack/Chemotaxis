Walker[] bob = new Walker[101];
int foodx = 0;
int foody = 0;


void setup(){
  size(600,600);
  background(0,0,0);
  for (int i = 0; i < 100;i++){
    bob[i] = new Walker();
  }
  bob[100] = new Walker(1);
}


void draw(){
  background(0,0,0);
  bob[100].move();
  bob[100].show();
  for ( int i = 0; i < 100; i++){
    bob[i].move();
    bob[i].show();
  }
}


class Walker{
  int X,Y,Color,a;
  Walker(){
    X = 300;
    Y = 300;
    Color = (int)(Math.random()*256);
    a = 0;
  }
  
  Walker(int type){
    X = 300;
    Y = 300;
    Color = (int)(Math.random()*256);
    a = type;
    
  }
  void move(){
    if (a != 0){
    X = X + (int)(Math.random()*11)-5; 
    Y = Y + (int)(Math.random()*11)-5;
    foodx = X;
    foody = Y;
    }
    else{
    X = X + ((int)(Math.random()*11)-5) + (int)((foodx-X)/180); 
    Y = Y + ((int)(Math.random()*11)-5) + (int)((foody-Y)/180);
    }
  }
  void show(){
    if ( a != 0){
      fill(255,0,0);
    }
    else{
      fill(Color);
    }
    ellipse(X,Y,10,10);
  }
  
}
