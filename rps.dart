
import"dart:io";
import 'dart:math';


enum Move{rock,paper,scissors}


void main(){
var pc_score=0;
var player_score=0;
var player_move;
  while(pc_score<2 && player_score<2){
  print("Hello. Type 'rock' for the stone option, type 'paper' for the paper option and type 'scissors' for the scissors option. Please type 'quit' to exit.");

  var option = stdin.readLineSync();


if(option == 'rock'){
  player_move = Move.rock;
}

else if (option == 'paper'){
  player_move = Move.paper;
}

else if (option == 'scissors'){
  player_move = Move.scissors;
}

else if (option == 'quit'){
  print("Game is closed");
  exit(0);
}

else if(option == 'restart'){
  print("Game is restarted");
  player_score=0;
  pc_score=0;
  continue;
}

else{
  print("İnvalid option. Please enter a valid option ");
  continue;
}

var rastgele = Random().nextInt(3);
var pc_move = Move.values[rastgele];
print('Your move: $option');
print('The computers move: $pc_move');

if(player_move == Move.paper && pc_move == Move.rock || player_move == Move.rock && pc_move == Move.scissors || player_move == Move.scissors && pc_move == Move.paper){
  print("Congratulations you win. ");
  player_score++;
}

else if (player_move == pc_move){
  print("Draw.");
}

else {
  print("You lose. ");
  pc_score++;
}
print("Score: ");
print("Player: "+player_score.toString()+"  Computer: "+pc_score.toString());
  }
}
