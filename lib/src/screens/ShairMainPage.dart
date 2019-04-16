import 'package:flutter/material.dart';
import '../widgets/BotaoAviaoLayer.dart';
import '../widgets/BotaoAviaoActivator.dart';
import '../widgets/BotaoAssentoLayer.dart';
import '../widgets/BotaoAssentoActivator.dart';

import '../widgets/VoosPopularesHeaderLayer.dart';
import '../widgets/BotaoPartidaInputLayer.dart';
import '../widgets/BotaoPartidaInputActivator.dart';

class ShairMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          child: Stack(
            children: <Widget>[
              // VoosPopularesHeaderLayer(),
              // BotaoAssentoLayer(),
              // BotaoAviaoLayer(),
              BotaoPartidaInputLayer(),
              // BotaoAssentoActivator(),
              // BotaoAviaoActivator(),
              BotaoPartidaInputActivator()
            ],
          ),
        );
      },
    );
  }
}
