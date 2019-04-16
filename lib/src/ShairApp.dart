import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import '../src/blocs/ShairBloc.dart';
import '../src/widgets/MenuAndBackgroundLayer.dart';
import '../src/widgets/VoosPopularesHeaderLayer.dart';
import '../src/widgets/BotaoAviaoLayer.dart';
import '../src/widgets/BotaoAssentoLayer.dart';
import '../src/widgets/BotaoPartidaInputLayer.dart';
import '../src/widgets/BotaoDestinoInputLayer.dart';
import '../src/widgets/BotaoProcurarLayer.dart';
import '../src/widgets/ShairActivatorsLayer.dart';
import '../src/widgets/VoosPopularesListLayer.dart';
import '../src/widgets/MapContainerLayer.dart';
import '../src/widgets/FlightListLayer.dart';

class ShairApp extends StatefulWidget {
  @override
  _ShairAppState createState() => _ShairAppState();
}

class _ShairAppState extends State<ShairApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          bloc: ShairBloc(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Stack(
                  children: <Widget>[
                    MenuAndBackgroundLayer(),
                    VoosPopularesHeaderLayer(),
                    BotaoAviaoLayer(),
                    BotaoAssentoLayer(),
                    BotaoPartidaInputLayer(),
                    BotaoDestinoInputLayer(),
                    // MapContainerLayer(),
                    VoosPopularesLayer(),
                    BotaoProcurarLayer(),
                    FlightListLayer(),
                    ShairActivatorsLayer(),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
// }
//  Positioned(
//                       top: constraints.maxHeight * 0.3,
//                       child: Container(
//                           width: constraints.maxWidth,
//                           height: constraints.maxHeight * 0.3,
//                           child: Transform.scale(
//                             scale: someScale,
//                             child: Container(
//                                 decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('images/worldMap.jpg'),
//                                   fit: BoxFit.none),
//                             )),
//                           ))),
//                   Positioned(
//                       top: constraints.maxHeight * 0.6,
//                       child: GestureDetector(
//                         child: Container(
//                           height: 30.0,
//                           width: 30.0,
//                           color: Colors.black,
//                         ),
//                         onTap: () {
//                           setState(() {
//                             someScale += 0.1;
//                           });
//                         },
//                       )),
//                   Positioned(
//                       top: constraints.maxHeight * 0.6,
//                       right: 30.0,
//                       child: GestureDetector(
//                         child: Container(
//                           height: 30.0,
//                           width: 30.0,
//                           color: Colors.pink,
//                         ),
//                         onTap: () {
//                           setState(() {
//                             someScale -= 0.1;
//                           });
//                         },
//                       )),
