import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class VoosPopularesHeaderLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          child: FlareActor('assets/voosPopulares.flr',
              alignment: Alignment.center, fit: BoxFit.contain, animation: ''));
    });
  }
}
