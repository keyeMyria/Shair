import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class FlightListLayer extends StatefulWidget {
  @override
  _FlightListLayerState createState() => _FlightListLayerState();
}

class _FlightListLayerState extends State<FlightListLayer> {
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

    return StreamBuilder(
        stream: shairBloc.canShowFlightListState,
        initialData: false,
        builder: (context, snapshot) {
          if (snapshot.data == false) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: <Widget>[
                    Positioned(
                        top: constraints.maxHeight * 0.33,
                        child: StreamBuilder(
                          stream:
                              shairBloc.weekHorizontalFlightListOpacityState,
                          initialData: 0.0,
                          builder: (context, snapshot) {
                            return AnimatedOpacity(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.easeIn,
                              opacity: snapshot.data,
                              child: Container(
                                  height: constraints.maxHeight * 0.19,
                                  width: constraints.maxWidth,
                                  color: Colors.transparent,
                                  child: Container(
                                    color: Colors.transparent,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 25,
                                      itemBuilder:
                                          (BuildContext context, int Index) {
                                        return Container(
                                          margin: EdgeInsets.only(
                                              left:
                                                  constraints.maxWidth * 0.02),
                                          width: constraints.maxWidth * 0.12,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text('D',
                                                  style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: Colors.black,
                                                    fontSize:
                                                        constraints.maxHeight *
                                                            0.02,
                                                  )),
                                              Text('21',
                                                  style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: Colors.grey[100],
                                                    fontSize:
                                                        constraints.maxHeight *
                                                            0.02,
                                                  )),
                                              Container(
                                                width: constraints.maxWidth *
                                                    0.085,
                                                height: constraints.maxHeight *
                                                    0.07,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            constraints
                                                                    .maxWidth *
                                                                0.01)),
                                              ),
                                              Text('R\$899,9',
                                                  style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: Colors.grey[100],
                                                    fontSize:
                                                        constraints.maxHeight *
                                                            0.015,
                                                  )),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                            );
                          },
                        )),
                    Positioned(
                      top: constraints.maxHeight * 0.5,
                      child: StreamBuilder(
                          initialData: 0.0,
                          stream: shairBloc.flightListOpacityState,
                          builder: (context, snapshot) {
                            return AnimatedOpacity(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                              opacity: snapshot.data,
                              child: Container(
                                  height: constraints.maxHeight * 0.5,
                                  width: constraints.maxWidth,
                                  child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder:
                                        (BuildContext context, int Index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                            left: constraints.maxWidth * 0.05,
                                            right: constraints.maxWidth * 0.05,
                                            bottom:
                                                constraints.maxHeight * 0.02),
                                        height: constraints.maxHeight * 0.15,
                                        width: constraints.maxWidth * 0.9,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey[200],
                                                width: constraints.maxWidth *
                                                    0.005),
                                            borderRadius: BorderRadius.circular(
                                                constraints.maxWidth * 0.03)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              width: constraints.maxWidth * 0.2,
                                              color: Colors.transparent,
                                              padding: EdgeInsets.only(
                                                  top: constraints.maxHeight *
                                                      0.04),
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    '9:50',
                                                    style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.black,
                                                      fontSize: constraints
                                                              .maxHeight *
                                                          0.03,
                                                    ),
                                                  ),
                                                  Container(
                                                    height:
                                                        constraints.maxHeight *
                                                            0.01,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    'CTU',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color: Colors.grey[300],
                                                        fontSize: constraints
                                                                .maxHeight *
                                                            0.02),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: constraints.maxWidth * 0.4,
                                              color: Colors.transparent,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: constraints
                                                                    .maxHeight *
                                                                0.02,
                                                            left: constraints
                                                                    .maxHeight *
                                                                0.0),
                                                        child: Text(
                                                          '14/05/2019',
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              color: Colors
                                                                  .grey[400],
                                                              fontSize: constraints
                                                                      .maxHeight *
                                                                  0.024),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            top: constraints
                                                                    .maxHeight *
                                                                0.009),
                                                        height: constraints
                                                                .maxHeight *
                                                            0.02,
                                                        width: constraints
                                                                .maxWidth *
                                                            0.15,
                                                        child: Icon(
                                                          Icons.access_time,
                                                          size: constraints
                                                                  .maxWidth *
                                                              0.05,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: constraints
                                                                .maxHeight *
                                                            0.02),
                                                    height:
                                                        constraints.maxHeight *
                                                            0.01,
                                                    child: Center(
                                                      child: Text(
                                                        'R\$749,90',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color: Colors.black,
                                                            fontSize: constraints
                                                                    .maxHeight *
                                                                0.03),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: constraints.maxWidth * 0.2,
                                              color: Colors.transparent,
                                              padding: EdgeInsets.only(
                                                  top: constraints.maxHeight *
                                                      0.04),
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    '12:50',
                                                    style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.black,
                                                      fontSize: constraints
                                                              .maxHeight *
                                                          0.03,
                                                    ),
                                                  ),
                                                  Container(
                                                    height:
                                                        constraints.maxHeight *
                                                            0.01,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    'CFO',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color: Colors.grey[300],
                                                        fontSize: constraints
                                                                .maxHeight *
                                                            0.02),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  )),
                            );
                          }),
                    ),
                  ],
                );
              },
            );
          }
        });
  }
}
