float playerX = 0;
float playerY = 0;
float playerZ = 0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(150);

  // 視点（カメラ固定）
  camera(200, -200, 300, 0, 0, 0, 0, 1, 0);

  // 地面
  pushMatrix();
  translate(0, 50, 0);
  rotateX(radians(90));
  fill(100, 200, 100);
  rectMode(CENTER);
  rect(0, 0, 500, 500);
  popMatrix();

  // プレイヤー（動かすキューブ）
  pushMatrix();
  translate(playerX, playerY, playerZ);
  fill(200, 100, 100);
  box(50);
  popMatrix();
}

void keyPressed() {
  if (key == 'w') playerZ -= 10;
  if (key == 's') playerZ += 10;
  if (key == 'a') playerX -= 10;
  if (key == 'd') playerX += 10;
  if (key == ' ') playerY -= 10;     // ジャンプ
  if (keyCode == SHIFT) playerY += 10; // しゃがみ
}
