import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoAviaoActivator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);
    return StreamBuilder(
      stream: shairBloc.botaoAssentoState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: constraints.maxHeight * 0.530,
                    left: constraints.maxWidth * 0.27,
                    child: GestureDetector(
                      onTap: () {
                        print(snapshot.data);
                        if (snapshot.data == 'botaoAssentoPreenche') {
                          shairBloc.botaoAviaoPreenche();
                          shairBloc.botaoAssentoDespreenche();
                        } else {
                          shairBloc.botaoAviaoPreenche();
                        }
                      },
                      child: Container(
                          height: constraints.maxHeight * 0.07,
                          width: constraints.maxWidth * 0.16,
                          color: Colors.transparent),
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
