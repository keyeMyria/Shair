import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class BotaoProcurarLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

    return StreamBuilder(
      stream: shairBloc.botaoProcurarState,
      builder: (context, snapshot) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: FlareActor('assets/telaDois.flr',
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: snapshot.data));
          },
        );
      },
    );
  }
}
