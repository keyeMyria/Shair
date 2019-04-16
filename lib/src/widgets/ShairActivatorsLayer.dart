import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'BotaoAssentoActivator.dart';
import 'BotaoAviaoActivator.dart';
import 'BotaoDestinoInputActivator.dart';
import 'BotaoPartidaInputActivator.dart';
import 'BotaoProcurarSobeActivator.dart';
import 'BotaoProcurarDesceActivator.dart';
import 'BotaoMenuActivator.dart';

class ShairActivatorsLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

    return StreamBuilder(
      stream: shairBloc.activatorsState,
      initialData: 'TelaUmConfiguration',
      builder: (context, snapshot) {
        if (snapshot.data == 'TelaUmConfiguration') {
          return LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Stack(
                  children: <Widget>[
                    BotaoAssentoActivator(),
                    BotaoAviaoActivator(),
                    BotaoDestinoInputActivator(),
                    BotaoPartidaInputActivator(),
                    BotaoProcurarSobeActivator(),
                    BotaoMenuActivator(),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.data == 'TelaDoisConfiguration') {
          return LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Stack(
                  children: <Widget>[
                    BotaoProcurarDesceActivator(),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
