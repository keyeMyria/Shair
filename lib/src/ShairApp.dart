import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import '../src/blocs/ShairBloc.dart';
import '../src/widgets/MenuAndBackgroundLayer.dart';
import '../src/widgets/VoosPopularesHeaderLayer.dart';

import '../src/widgets/BotaoProcurarLayer.dart';
import '../src/widgets/ShairActivatorsLayer.dart';
import '../src/widgets/VoosPopularesListLayer.dart';
import '../src/widgets/MapContainerLayer.dart';
import '../src/widgets/FlightListLayer.dart';
import '../src/widgets/SearchInputLayer.dart';

class ShairApp extends StatefulWidget {
  @override
  _ShairAppState createState() => _ShairAppState();
}

class _ShairAppState extends State<ShairApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          cursorColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          bloc: ShairBloc(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        child: Container(
                            child: Stack(
                          children: <Widget>[
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Image.asset(
                                'images/mapaBrasil.jpg',
                                fit: BoxFit.cover,
                                scale: 1.0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: constraints.maxHeight * 0.35,
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    gradient: LinearGradient(
                                        begin: FractionalOffset.center,
                                        end: FractionalOffset.topCenter,
                                        colors: [
                                          Colors.grey[50].withOpacity(1.0),
                                          Colors.grey[50].withOpacity(0.0)
                                        ],
                                        stops: [
                                          0.0,
                                          1.0
                                        ])),
                              ),
                            )

                            // Opacity(
                            //   opacity: 0.5,
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //         gradient: LinearGradient(
                            //             begin: FractionalOffset.topCenter,
                            //             end: FractionalOffset.bottomCenter,
                            //             colors: [
                            //           Colors.white,
                            //           Colors.grey[300],
                            //         ],
                            //             stops: [
                            //           0.0,
                            //           1.0
                            //         ])),
                            //     height: double.infinity,
                            //     width: double.infinity,
                            //   ),
                            // ),
                          ],
                        ))),
                    VoosPopularesHeaderLayer(),
                    // BotaoAviaoLayer(),
                    // BotaoAssentoLayer(),
                    // MapContainerLayer(),
                    VoosPopularesLayer(),
                    FlightListLayer(),
                    SearchInputLayer(),

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
