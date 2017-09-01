//Variable globales
matriz vic;
matriz pau;


void setup(){
size (400,400);
background(255);

vic= new matriz(5,8,100,50,50);
pau= new matriz(5,10,100,200,50);

}

void draw(){
  vic.flechita(); 
  vic.display();
  
  pau.flechita(); 
  pau.display();
  
}






class matriz{
    //describir atributos: tamaño de cuadro, tamaño de matriz, posición
  int c,c1,c2,m,x,y;

//Método de construcción
matriz(int c1_, int c2_, int m_, int x_, int y_){

  c1=c1_;
  c2=c1_*c2_; //está en función del zoom, no del tamaño de los cuadros
  m=m_;
  x=x_;
  y=y_;

}



//Métodos

void flechita(){
  if((mouseX >= x & mouseX <= x+m)&(mouseY >= y & mouseY <= y+m)){
  c=c2;
  }
  else{
  c=c1;
  }
}




void display(){
  noStroke();
  for(int i=0; i<m; i+=c){
    for(int j=0; j<m; j+=c){
    fill(random(255),random(255),random(255));
    rect(x+i,y+j,c,c);
    }
  }

}



}//class