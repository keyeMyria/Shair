import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoMenuActivator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);
    return StreamBuilder(
      stream: shairBloc.menuState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: constraints.maxHeight * 0.04,
                    left: constraints.maxWidth * 0.04,
                    child: GestureDetector(
                      onTap: () {
                        if (snapshot.data == 'menuAbre') {
                          shairBloc.closeMenu();
                        } else if (snapshot.data == 'menuFecha' ||
                            snapshot.data == null) {
                          shairBloc.showMenu();
                        }
                      },
                      child: Container(
                          height: constraints.maxHeight * 0.06,
                          width: constraints.maxWidth * 0.1,
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
