/* Glasgow, see notes on how to add:

oscillating swing indicator
fixed source holes
piezo signal display
moving oscillating ball
ball gets bigger when not in fixed hole

*/


import controlP5.*;

ControlP5 cp5;

int myColorBackground = color(0,0,0);
int knobValue = 100;

Knob myKnob;

float angle = 0;
float aVelocity = 0.04;

void setup() {

  size(1040,640);
  smooth();
  cp5 = new ControlP5(this);
  
  myKnob = cp5.addKnob("Tempo")
               .setRange(0,1)
               .setValue(0.04)
               .setPosition(180,2)
               .setRadius(50)
               .setDragDirection(Knob.VERTICAL)
               ;
}

void draw() {
  background(0,10,10);
  float amplitude = 100;
  float x = amplitude * cos(angle);
  fill(0, 102, 153, 204);
  textSize(32);
  fill(0,250,0,50);
  text("Drummer Metronome", width/2 - 180, 50); 
  angle += aVelocity;
  ellipseMode(CENTER);
  stroke(220);
  strokeWeight(2.0);
  fill(250);
  translate(width/2,height/2);
  line(0,0,x,0);
  line(100,50,100,x);
  ellipse(100,x,20,20);
  ellipse(x,0,20,20);
}



void keyPressed() {
  switch(key) {
    case('1'):
    {
       if(aVelocity < 1.0) {
         aVelocity+= 0.01;
       }
       
       myKnob.setValue(aVelocity);
       break;
    }
    
    case('2'):
    {
       
       if(aVelocity > 0.0) {
         aVelocity-= 0.01;
       }
       myKnob.setValue(aVelocity);
       break;
    }
  
    //case('2'):myKnobB.setConstrained(false).hideTickMarks().snapToTickMarks(false);break;
    //case('3'):myKnobA.shuffle();myKnobB.shuffle();break;
  }
}
  
