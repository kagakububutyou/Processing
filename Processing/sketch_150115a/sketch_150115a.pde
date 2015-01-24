float ball_x = 200.0;
float ball_y = 200.0;
float ball_vx = 3.0;
float ball_vy = -5.0;
int [][] block = {{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,1}};
int bar_x = 150;
int bar_y = 350;

void setup(){
  size( 300, 400 );
  frameRate( 30 );
}

void draw() {
  background( 180, 255, 220 );
  fill( 100, 200, 0 );
  noStroke();
  rect( 0, 0, 10, 400 );
  rect( 0, 0, 300, 10 );
  rect( 290, 0, 10, 400 );
  drawBlock();
  fill( 200, 100, 0 );
  bar_x = mouseX;
  if( bar_x < 40 ) bar_x = 40;
  if( bar_x > 260 ) bar_x = 260;
  rect( bar_x - 30, bar_y, 60, 20 );
  
  fill( 0, 100, 200 );
  ellipse( ball_x, ball_y, 20, 20 );
  ball_x += ball_vx;
  ball_y += ball_vy;
  
  if( ball_x < 20 ){
    ball_x = 20;
    ball_vx = -ball_vx;
  }
  if( ball_x > 280 ){
    ball_x = 280;
    ball_vx = -ball_vx;
  }
  if( ball_y < 20 ){
    ball_y = 20;
    ball_vy = -ball_vy;
  }
  if( ball_y > bar_y-10 ){
    if( ball_x > bar_x-30 && ball_x < bar_x+30 ){
      ball_y = bar_y-10;
      ball_vy = -ball_vy;
      ball_vx += ( ball_x - bar_x) / 10;
    }
  }
  if( ball_y > bar_y+10 ){
    noLoop();
    fill( 255, 0, 0 );
    PFont font = loadFont( "Osaka-48.vlw" );
    textFont( font, 32 );
    text( "GameOver", 70, 240 );
  }
  
  for( int i=0; i<5; i++ ){
    for( int j=0; j<5; j++ ){
      if( block[i][j] > 0 ){
        if( ball_x > j*50+20 && ball_x < j*50+60 &&
            ball_y > i*30+20 && ball_y < i*30+60 ){
              ball_vy = -ball_vy;
              block[i][j] --;
            }
      }
    }
  }
  int k=1;
  for( int i=0; i<5; i++ ){
    for( int j=0; j<5; j++ ){
      if( block[i][j] > 0 )
        k = 0;
    }
  }
  if( k == 1 ){
    noLoop();
    fill( 255, 0, 0 );
    PFont font = loadFont( "Osaka-48.vlw" );
    textFont( font, 32 );
    text( "Clear", 100, 240 );
  }
}

void drawBlock() {
  int i, j;
  for( i=0; i<5; i++ ){
    for( j=0; j<5; j++ ){
      switch( block[i][j] ){
        case 3:
        stroke( 0 );
        fill( 100 );
        break;
        case 2:
        stroke( 0 );
        fill( 150 );
        break;
        case 1:
        stroke( 0 );
        fill( 200 );
      }
      if( block[i][j] > 0 ){
        rect( j*50+30, i*30+30, 40, 20 );
      }
    }
  }
}
