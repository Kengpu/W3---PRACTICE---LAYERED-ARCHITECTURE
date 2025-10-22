import 'domain/quiz.dart';
import 'ui/quiz_console.dart';
import 'data/quiz_file_provider.dart';
void main() {

  final repo = QuizRepository();
  final filePath = 'quiz.json';

  repo.readQuiz(filePath);
  if (repo.questions.isEmpty) {
    print("Quiz file not found or empty. Write.....");
    repo.writeQuiz(filePath);
  } else {
    print("Quiz loaded from file.");
  }

  Quiz quiz = Quiz(questions: repo.questions);
  QuizConsole console = QuizConsole(quiz: quiz);

  console.startQuiz();
}
