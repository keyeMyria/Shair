import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoProcurarSobeActivator extends StatelessWidget {
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
                    top: constraints.maxHeight * 0.9,
                    left: constraints.maxWidth * 0.05,
                    child: GestureDetector(
                      onTap: () {
                        shairBloc.setCanShowFlightListToTrue();
                        shairBloc.botaoProcurarSobe();
                        shairBloc.flightListFadeIn();
                        shairBloc.weekHorizontalFlightListFadeIn();
                        print(snapshot.data);
                      },
                      child: Container(
                        height: constraints.maxHeight * 0.07,
                        width: constraints.maxWidth * 0.9,
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
