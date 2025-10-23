import 'domain/quiz.dart';
import 'ui/quiz_console.dart';
import 'data/quiz_file_provider.dart';
void main() {

  final repo = QuizRepository();
  final filePath = 'quiz.json';

  repo.readQuiz(filePath);
  repo.writeQuiz(filePath);
  
  Quiz quiz = Quiz(questions: repo.questions);
  QuizConsole console = QuizConsole(quiz: quiz);

  console.startQuiz();
}

