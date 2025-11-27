//train whistle Sound Effect from <a href="https://pixabay.com/sound-effects/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=102834">Pixabay</a>

//import the sound library
import processing.sound.*;

Train train;

//declare a SoundFile
SoundFile whistle;
SoundFile ding;

//declare time variables
int timerLength = 50;//number to count up to
int timerValue = 0;//current value of the timer

void setup() {
  size(400, 400);
  //load the sound effect from the data folder
  whistle = new SoundFile(this, "train-whistle.wav");
  ding = new SoundFile(this, "pling.wav");
  
  train = new Train(random(100, 300), random(0.5, 2));
  background(255);

}

void draw() {
  timerValue++;
  if(timerValue > timerLength){
    timerValue = 0;
    
    //what happens when the time is up
    background(random(255), random(255), random(255));//random color
    ding.play();
  }

  train.update();
}

void keyPressed(){
 //press space to toot the horn! But don't allow it to keep starting
  if(key == ' ' && !whistle.isPlaying()){
     whistle.play(); 
  }
}
