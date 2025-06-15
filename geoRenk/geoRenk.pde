int sayfa = 0;
PFont yazi;
PImage silgi;


// objelerin boyanmadan önceki renkleri
color secilenRenk1 = color(200);
color secilenRenk2 = color(200);
color secilenRenk3 = color(200);

// Sayfa 1 renk durumu
color daireRenk = color(200);
color kareRenk = color(200);
color ucgenRenk = color(200);

// Sayfa 2 renk durumu
color sphereRenk = color(200);
color kupRenk = color(200);

// Sayfa 3 renk durumu
color besgenRenk = color(200);
color altigenRenk = color(200);

void setup() {
  size(800, 600, P3D);
  silgi=loadImage("silgi.png");
  yazi = createFont("Arial", 120);
  textFont(yazi);
  textAlign(CENTER, CENTER);
  

}

//ETKİLEŞİMLİ BUTONLAR

void mousePressed() {
  // Sayfa seçim butonları
  if (mouseX > 260 && mouseX < 340 && mouseY > 550 && mouseY < 580) sayfa = 1; // ai
  if (mouseX > 360 && mouseX < 440 && mouseY > 550 && mouseY < 580) sayfa = 2; // ai
  if (mouseX > 460 && mouseX < 540 && mouseY > 550 && mouseY < 580) sayfa = 3; // ai
  if (mouseX > 675 && mouseX < 705 && mouseY > 20 && mouseY < 50)   sayfa = 4; // ai
  
  // Geri butonu
    if (mouseX > 720 && mouseX < 750 && mouseY > 20 && mouseY < 50)   sayfa = 0; // ai

  
  
  // Renk paleti seçimleri
if (sayfa == 1) {
  if (mouseX > 60 && mouseX < 80 && mouseY > 30 && mouseY < 50) secilenRenk1 = color(255, 0, 0); // ai
  if (mouseX > 90 && mouseX < 110 && mouseY > 30 && mouseY < 50) secilenRenk1 = color(255, 165, 0); // ai
  if (mouseX > 120 && mouseX < 140 && mouseY > 30 && mouseY < 50) secilenRenk1 = color(255, 255, 0); // ai
  if (mouseX > 150 && mouseX < 170 && mouseY > 30 && mouseY < 50) secilenRenk1 = color(186, 85, 211); // ai
  if (mouseX > 180 && mouseX < 200 && mouseY > 30 && mouseY < 50) secilenRenk1 = color(200); // ai
  // şekiller:
  if (dist(mouseX, mouseY, 230, 300) < 75) daireRenk = secilenRenk1; // ai
  if (mouseX > 325 && mouseX < 475 && mouseY > 225 && mouseY < 375) kareRenk = secilenRenk1; // ai
  if (dist(mouseX, mouseY, 570, 300) < 75) ucgenRenk = secilenRenk1; // ai
}
  // Renk paleti seçimleri
  if (sayfa == 2) {
  if (mouseX > 60 && mouseX < 80 && mouseY > 30 && mouseY < 50) secilenRenk2 = color(0, 0, 255); // ai
  if (mouseX > 90 && mouseX < 110 && mouseY > 30 && mouseY < 50) secilenRenk2 = color(255, 182, 193); // ai 
  if (mouseX > 120 && mouseX < 140 && mouseY > 30 && mouseY < 50) secilenRenk2 = color(0, 255, 0); // ai
  if (mouseX > 150 && mouseX < 170 && mouseY > 30 && mouseY < 50) secilenRenk2 = color(255, 255, 102); // ai
  if (mouseX > 180 && mouseX < 200 && mouseY > 30 && mouseY < 50) secilenRenk2 = color(200); // ai
  // şekiller: 
  if (dist(mouseX, mouseY, width/2 - 100, height/2) < 100) sphereRenk = secilenRenk2; // ai
  if (mouseX > width/2 + 100 - 60 && mouseX < width/2 + 100 + 60 && mouseY > height/2 - 60 && mouseY < height/2 + 60) kupRenk = secilenRenk2; // ai
}

  // Renk paleti seçimleri
  if (sayfa == 3) {
  if (mouseX > 60 && mouseX < 80 && mouseY > 30 && mouseY < 50) secilenRenk3 = color(255, 255, 0); // ai
  if (mouseX > 90 && mouseX < 110 && mouseY > 30 && mouseY < 50) secilenRenk3 = color(0, 0, 255); // ai
  if (mouseX > 120 && mouseX < 140 && mouseY > 30 && mouseY < 50) secilenRenk3 = color(255, 105, 180); // ai
  if (mouseX > 150 && mouseX < 170 && mouseY > 30 && mouseY < 50) secilenRenk3 = color(0, 128, 0); // ai
  if (mouseX > 180 && mouseX < 200 && mouseY > 30 && mouseY < 50) secilenRenk3 = color(200); // ai
  // şekiller:
  if (dist(mouseX, mouseY, 280, 250) < 75) besgenRenk = secilenRenk3; // ai
  if (dist(mouseX, mouseY, 520, 350) < 75) altigenRenk = secilenRenk3; // ai
}
}

void draw() {
  background(255);
 
  
  //info butonu
      fill(200);         
      noStroke();
      ellipse(690, 35, 30, 30);
      fill(0);      
      textAlign(CENTER, CENTER);
      textSize(20); 
      text("?", 690, 35);

  // Sayfa seçim butonları
  fill(200);
  rect(260, 550, 80, 30);
  rect(360, 550, 80, 30);
  rect(460, 550, 80, 30);
  fill(0);
  textSize(16);
  text("Sayfa 1", 300, 565);
  text("Sayfa 2", 400, 565);
  text("Sayfa 3", 500, 565);
  
  //bilgi sayfası
  if(sayfa==4) {
    textSize(32);
    text("Bilgilendirme",400,35);
    textAlign(LEFT);
    textSize(18);
    text("Eren Arda",600,320);
    String infotext= "GeoRenk, yaratıcı, eğlenceli ve eğitici bir deneyimi evinizdeki teknolojik araçlarla sunan dijital bir boyama kitabıdır. Artan baskı maliyetlerine karşı pratik ve sürdürülebilir bir alternatif olarak geliştirilen bu proje, çocuklara temel geometrik şekilleri tanıtırken aynı zamanda dijital ortamda renklendirme deneyimi yaşatır. Kullanıcılar, ekranın köşesindeki renk paletinden diledikleri rengi seçerek şekilleri boyayabilir, silgi aracıyla istedikleri alanları temizleyerek yeniden renklendirebilirler. Her şeklin adı, boyama sırasında görünür hâle gelerek öğrenmeyi destekler. GeoRenk ile öğrenmek ve yaratıcılığı geliştirmek artık daha erişilebilir!";
    textSize(18);
    fill(0);
    text(infotext,75,100,650,400);
    
    //geri tuşu
      fill(200);         
      noStroke();  
      ellipse(735, 35, 30, 30);
      fill(50);            
      noStroke();
      triangle(743, 29, 728, 35, 743, 42);
      stroke(0);
  }
  
  
  
  //giris sayfası
  if (sayfa == 0) {
    fill(0);
    textSize(20);
    text("Şekilleri Renklerle Öğren!", 400, 275);
    textSize(18);
    text("Eren Arda", 400,315);
    textSize(64);
    text("GeoRenk", 400, 220);
  } else {
    stroke(0);
    noFill();
    rect(50, 70, 700, 450);

    // Sayfaya özel renk paleti ve geri butonu
    
    
    if (sayfa == 1) {
      //geri tuşu
      fill(200);         
      noStroke();  
      ellipse(735, 35, 30, 30);
      fill(50);            
      noStroke();
      triangle(742.5, 28.5, 727.5, 35, 742.5, 41.5);
      stroke(0);
      //renk paleti
      fill(255, 0, 0); rect(60, 30, 20, 20);
      fill(255, 165, 0); rect(90, 30, 20, 20);
      fill(255, 255, 0); rect(120, 30, 20, 20);
      fill(186, 85, 211); rect(150, 30, 20, 20);
      image(silgi,180,30,20,20);
    }
    
    if (sayfa == 2) {
      //geri tuşu
      fill(200);         
      noStroke();  
      ellipse(735, 35, 30, 30);
      fill(50);            
      noStroke();
      triangle(742.5, 28.5, 727.5, 35, 742.5, 41.5);
      stroke(0);
      //renk paleti
      fill(0, 0, 255); rect(60, 30, 20, 20);
      fill(255, 182, 193); rect(90, 30, 20, 20);
      fill(0, 255, 0); rect(120, 30, 20, 20);
      fill(255, 255, 102); rect(150, 30, 20, 20);
      image(silgi,180,30,20,20);
    }
    
    if (sayfa == 3) {
      //geri tuşu
      fill(200);         
      noStroke();  
      ellipse(735, 35, 30, 30);
      fill(50);            
      noStroke();
      triangle(742.5, 28.5, 727.5, 35, 742.5, 41.5);
      stroke(0);
      //renk paleti
      fill(255, 255, 0); rect(60, 30, 20, 20);
      fill(0, 0, 255); rect(90, 30, 20, 20);
      fill(255, 105, 180); rect(120, 30, 20, 20);
      fill(0, 128, 0); rect(150, 30, 20, 20);
      image(silgi,180,30,20,20);
    }
    
    
    

    // Sayfa içerikleri
    if (sayfa == 1) {
      fill(0); textSize(24); text("Sayfa 1", 400, 35);
      
      //şekiller
      fill(daireRenk); ellipse(230, 300, 150, 150);
      fill(kareRenk); rectMode(CENTER); rect(400, 300, 150, 150); rectMode(CORNER);
      fill(ucgenRenk); triangle(495, 375, 645, 375, 570, 225);
      
      //şekil yazıları
      if (daireRenk != color(200)) {
        fill(0);
        textSize(30);
        text("Daire", 230, 405);
      }
      if (kareRenk != color(200)) {
        fill(0);
        textSize(30);
        text("Kare", 400, 405);
      }
      if (ucgenRenk != color(200)) {
        fill(0);
        textSize(30);
        text("Üçgen", 570, 405);
          }
        }
      
    

    if (sayfa == 2) {
      fill(0); textSize(24); text("Sayfa 2", 400, 35);
      
      //küre
      pushMatrix();
      noStroke();
      ambientLight(60, 60, 60); // ai
      directionalLight(255, 255, 255, -1, -1, -0.5); // ai
      translate(width/2-100, height/2, 0);
      rotateY(frameCount * 0.01);
      fill(sphereRenk);
      sphere(100);
      popMatrix();
      
      //küp
      pushMatrix();
      ambientLight(60, 60, 60); // ai
      directionalLight(255, 255, 255, 0, 0, 1);      
      translate(width/2 + 100, height/2, 0); // ai
      fill(kupRenk);
      box(120);
      popMatrix();
      
      //şekil yazıları
    if (sphereRenk != color(200)) { // ai
        fill(0); // ai
        textSize(30); // ai
        text("Küre", width/2-100, height/2 + 130); // ai
      }
      if (kupRenk != color(200)) {
          fill(0);
          textSize(30);
          text("Küp",width/2+100,height/2+130);

      }
    }
    
    

    if (sayfa == 3) {
     fill(0); textSize(24); text("Sayfa 3", 400, 35);

            // beşgen
     float shiftX = 7.5; // ai
     fill(besgenRenk);
     beginShape();
     vertex(244 + 78 - shiftX, 216);    // ai          
     vertex(244 + 156 - shiftX, 216 + 56);     // ai   
     vertex(244 + 133 - shiftX, 216 + 168);    // ai 
     vertex(244 + 24 - shiftX, 216 + 168); // ai
     vertex(244 + 0 - shiftX, 216 + 56); // ai
     endShape(CLOSE);

            
            //altıgen
    int hexX = (int)(244 + 156 + 31 - shiftX);   // ai    
    fill(altigenRenk);
    beginShape(); 
    vertex(hexX + 94, 216);            // ai 
    vertex(hexX + 140, 216 + 56);      // ai
    vertex(hexX + 140, 216 + 132);     // ai
    vertex(hexX + 94, 216 + 187);      // ai
    vertex(hexX + 47, 216 + 132);      // ai
    vertex(hexX + 47, 216 + 56);       // ai
    endShape(CLOSE);
    
          //şekil yazıları
    if (besgenRenk != color(200)) {
        fill(0);
        textSize(30);
        text("Beşgen", width/2-85, height/2 + 130);
      }
      if (altigenRenk != color(200)) {
          fill(0);
          textSize(30);
          text("Altıgen",width/2+120,height/2+130);
      }
     
    }
  }
}
