// 4-18-14
// Based on Daniel Shiffman 3.7 Oscillator Class

class Oscillator {
  
  PVector angle;
  PVector velocity;
  PVector amplitude;
  
  
  
  // Constructor
  Oscillator() {
    
    angle = new PVector();
    velocity = new PVector(0.0,0.0);
    amplitude = new PVector(0.0,0.05);
  }
 
  void oscillate() {
    angle.add(velocity);
  }
  
  void display() {
       
  }
 
 
  
}
