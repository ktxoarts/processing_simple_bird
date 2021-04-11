ArrayList<SimpleBird> all_birds; //<>//
int stroke_color=0;
int stroke_weight=4;
int fill_color=0;
void setup() {
  size(800, 600);
  all_birds = new ArrayList<SimpleBird>();
  background(0); 
}


void draw() {
  
  background(0); 
  for (int i = 0; i < all_birds.size(); i++) {
    SimpleBird b = all_birds.get(i);
    if (b.isAlive()){
      b.move();  
    }else{
      all_birds.remove(i);
    }
      
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    //  constructor(x1, y1, age, point_size, speed, stroke_weight, stroke_color,fill_color) {

    all_birds.add(new SimpleBird(mouseX, mouseY, 200, 20, (int)random(1, 10), 2, stroke_color, fill_color));
    //SimpleBird(int x, int y, int age, int bird_size, int speed, int stroke_weight, int stroke_color, int fill_color) {
  } else if (mouseButton == RIGHT) {
    all_birds.removeAll(all_birds);
  }
}

void keyPressed() {

  if (key == 'r') {
    stroke_color= color(random(0, 255), random(0, 255), random(0, 255));
  } else if (key == 'w') {
    stroke_color= color(255, 255, 255);
  } else if (key == 'b') {
    stroke_color= color(0, 0, 0);
  } else if (key == 'g') {
    stroke_color= color(random(0, 255));
  }
}
