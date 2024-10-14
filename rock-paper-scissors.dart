import 'dart:io';
import 'dart:math';
void main() {
  final acak = Random();
  final pilihan = ['rock', 'paper', 'scissors'];
  while (true) {
    print('================================');
    print('🎮 Rock 👊 Paper ✋ Scissors ✌️');
    print('================================');
    print('Choose your weapon:');
    print('1. 👊 Rock');
    print('2. ✋ Paper');
    print('3. ✌️ Scissors');
    print('0. 🚪 Quit');
    print('--------------------------------');
    stdout.write('Enter your choice (0-3): ');
    final input = stdin.readLineSync()?.trim();
    String? pilihanmu;
    switch (input) {
      case '1': pilihanmu = 'rock';
      case '2': pilihanmu = 'paper';
      case '3': pilihanmu = 'scissors';
      case '0': 
        print('\n👋 Thanks for playing!');
        return;
      default:
        print('\n❌ Invalid choice. Please try again.');
        continue;
    }
    final komputer = pilihan[acak.nextInt(pilihan.length)];
    print('\n🤜 You chose: ${emoji(pilihanmu)}');
    print('🤖 Computer chose: ${emoji(komputer)}');
    if (pilihanmu == komputer) {
      print('\n${hasil(pilihanmu, komputer)}');
    } else if ((pilihanmu == 'rock' && komputer == 'scissors') ||
               (pilihanmu == 'paper' && komputer == 'rock') ||
                (pilihanmu == 'scissors' && komputer == 'paper')) {
      print('\n${hasil(pilihanmu, komputer)}');
    } else {
      print('\n${hasil(pilihanmu, komputer)}');
    }
    print('\nPress Enter to play again...');
    stdin.readLineSync();
  }
}
String emoji(String choice) {
  switch (choice) {
    case 'rock': return '👊 Rock';
    case 'paper': return '✋ Paper';
    case 'scissors': return '✌️ Scissors';
    default: return choice;
  }
}
String hasil(String player, String computer) {
  if (player == computer) {
    return '🤝 It\'s a tie!';
  } else if ((player == 'rock' && computer == 'scissors') ||
             (player == 'paper' && computer == 'rock') ||
             (player == 'scissors' && computer == 'paper')) {
    return '🎉 You win!';
  } else {
    return '💻 Computer wins!';
  }
}
