//<>// //<>// //<>//
class Constants {
  static final float RIGHT = 1;
  static final float LEFT = -1;
  static final float NONE = 0;
}


class SimpleBird { //<>//
  PVector p = new PVector (width / 2, height / 2);

  int bird_size=10;
  int point_size = 2;
  int stroke_weight = 3;
  int stroke_color = color(0);
  int fill_color =color(random(1, 255), random(1, 255), random(1, 255));
  int speed = 10;
  int speed_counter = this.speed;
  boolean alive = true;
  int age = 10*10;
  int toggle = 1; 
  SimpleBird(int x, int y, int age, int bird_size, int speed, int stroke_weight, int stroke_color, int fill_color) {
    //mouseX, mouseY,10,10,random(1,10), 2,stroke_color,fill_color)
    this.p = new PVector (x, y);
    this.bird_size=bird_size;
    this.stroke_weight = stroke_weight;
    this.stroke_color = stroke_color;
    this.fill_color =fill_color;
    this.speed = speed;
    this.speed_counter = speed;
    this.age = age;
  }
 //mouseX, mouseY, 100, 100, (int)random(1, 10), 2, stroke_color, fill_color)

  void move() {
    this.speed_counter--;
    strokeWeight(this.stroke_weight);
    stroke(this.stroke_color);
    circle(this.p.x, this.p.y, this.point_size);
    float w = 3 * this.bird_size;

    float h = this.toggle * this.bird_size;
    if (this.age > 0) {
      triangle(this.p.x, this.p.y, 
        this.p.x + w, this.p.y, 
        this.p.x + 2 * w / 3, this.p.y + h);
      triangle(this.p.x, this.p.y, 
        this.p.x - w, this.p.y, 
        this.p.x - 2 * w / 3, this.p.y + h);
      if (this.speed_counter < 0) {
        if (this.toggle < 0) {
          this.toggle = 1;
        } else {
          this.toggle = -1;
        }
        this.speed_counter = this.speed;
      }
    }
    this.age--;
  }
  boolean isAlive(){
    return this.age >0;
  }
}
