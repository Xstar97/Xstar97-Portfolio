import 'package:adityagurjar/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      name: 'Portfolio site',
      image: Assets.projectPortfolio,
      description:
      'This portfolio was developed in dart',
      app: null,
      git: 'https://github.com/Xstar97/Xstar97-Portfolio'
  ),
  Project(
      name: 'Xposed installer',
      image: Assets.projectXposedInstaller,
      description:
      'This app was developed in Kotlin and supports multiple modules: TV and mobile.',
      app: null,
      git: 'https://github.com/Xstar97/XposedInstaller'
  ),
  Project(
      name: 'Anime-planet',
      image: Assets.projectAnimePlanet,
      description:
      'This sample site was developed in dart with the original site as the model',
      app: null,
      git: 'https://github.com/Xstar97/anime_planet'
  ),
  Project(
      name: 'TicTacToe',
      image: Assets.projectTicTacToe,
      description:
      'This game was developed in dart for all plateforms.',
      app: 'https://tictactoe.xstar97.com/#/',
      git: 'https://github.com/Xstar97/TicTacToe'
  ),
  Project(
      name: 'Roshambo',
      image: Assets.projectRoShamBo,
      description:
      'This game was developed in dart for all plateforms.',
      app: 'https://roshambo.xstar97.com/',
      git: 'https://github.com/Xstar97/Roshambo'
  ),
];