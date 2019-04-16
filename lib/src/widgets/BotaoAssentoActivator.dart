import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoAssentoActivator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);
    return StreamBuilder(
      stream: shairBloc.botaoAviaoState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: constraints.maxHeight * 0.525,
                    right: constraints.maxWidth * 0.27,
                    child: GestureDetector(
                      onTap: () {
                        print(snapshot.data);

                        if (snapshot.data == 'botaoAviaoPreenche') {
                          shairBloc.botaoAssentoPreenche();
                          shairBloc.botaoAviaoDespreenche();
                          print('cheguei');
                        } else {
                          shairBloc.botaoAssentoPreenche();
                        }
                      },
                      child: Container(
                        height: constraints.maxHeight * 0.07,
                        width: constraints.maxWidth * 0.17,
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
