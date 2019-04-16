import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoPartidaInputActivator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

    return StreamBuilder(
      stream: shairBloc.botaoPartidaState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: constraints.maxHeight * 0.105,
                    left: constraints.maxWidth * 0.045,
                    child: GestureDetector(
                      onTap: () {
                        print(snapshot.data);
                        shairBloc.botaoPartidaFade();
                        print(snapshot.data);
                      },
                      child: Container(
                          height: constraints.maxHeight * 0.065,
                          width: constraints.maxWidth * 0.91,
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
