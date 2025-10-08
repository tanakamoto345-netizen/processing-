# 🎓 学籍番号・氏名
**2501014　田中望斗**

---

## 📄 概要
Processingの3D描画機能（P3D）を使い、キーボード操作で動かせる立方体（プレイヤー）を実装しました。
地面を描画し、カメラを固定視点にすることで簡易的な3D空間を表現しています。

---

## 🎮 操作方法
| キー    | 動作               |
|--------|--------------------|
| w  | 前進 (Z軸 -)       |
| s  | 後退 (Z軸 +)       |
| a   | 左移動 (X軸 -)     |
| d   | 右移動 (X軸 +)     |
| スペース | 上昇 (ジャンプ)   |
| Shift  | 下降 (しゃがみ)    |
---

## 💻 コード
```java
float playerX = 0;
float playerY = 0;
float playerZ = 0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(150);
  camera(200, -200, 300, 0, 0, 0, 0, 1, 0);
  pushMatrix();
  translate(0, 50, 0);
  rotateX(radians(90));
  fill(100, 200, 100);
  rectMode(CENTER);
  rect(0, 0, 500, 500);
  popMatrix();
  pushMatrix();
  translate(playerX, playerY, playerZ);
  fill(200, 100, 100);
  box(50);
  popMatrix();
void keyPressed() {
  if (key == 'w') playerZ -= 10;
  if (key == 's') playerZ += 10;
  if (key == 'a') playerX -= 10;
  if (key == 'd') playerX += 10;
  if (key == ' ') playerY -= 10;     
  if (keyCode == SHIFT) playerY += 10; 
}

}
