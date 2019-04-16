import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoProcurarDesceActivator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

    return StreamBuilder(
      stream: shairBloc.botaoProcurarState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: constraints.maxHeight * 0.28,
                    left: constraints.maxWidth * 0.05,
                    child: GestureDetector(
                      onTap: () {
                        shairBloc.botaoProcurarDesce();
                        shairBloc.flightListFadeOut();
                        shairBloc.weekHorizontalFlightListFadeOut();
                        shairBloc.setCanShowFlightListToFalse();
                      },
                      child: Container(
                        height: constraints.maxHeight * 0.04,
                        width: constraints.maxWidth * 0.1,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
