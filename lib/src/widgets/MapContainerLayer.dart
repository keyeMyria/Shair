import 'package:flutter/material.dart';

import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class MapContainerLayer extends StatelessWidget {
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
                    top: constraints.maxHeight * 0.265,
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.25,
                      child: Transform.scale(
                        scale: 1,
                        child: Container(
                          child: Image(
                            image: AssetImage('images/mapaBrasil.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
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
