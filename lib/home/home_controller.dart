import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    
    user = UserModel(
      name: "Thalison",
      photoUrl: "https://avatars.githubusercontent.com/u/54786785?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5",
        questions: [
          QuestionModel(title: "Está curtindo o flutter?", awnsers: [
            AwnserModel(title: "Estou curtindo"),
            AwnserModel(title: "Amando Flutter"),
            AwnserModel(title: "Muito Top"),
            AwnserModel(title: "Show de bola", isRight: true),
          ]),
          QuestionModel(title: "Está curtindo o flutter?", awnsers: [
            AwnserModel(title: "Estou curtindo"),
            AwnserModel(title: "Amando Flutter"),
            AwnserModel(title: "Muito Top"),
            AwnserModel(title: "Show de bola", isRight: true),
          ])
        ],
        imagem: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1,
      )
    ];
    state = HomeState.success;
  }
}
