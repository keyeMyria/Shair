import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class FlightListLayer extends StatefulWidget {
  @override
  _FlightListLayerState createState() => _FlightListLayerState();
}

class _FlightListLayerState extends State<FlightListLayer> {
  bool isContainerDown = true;
  double flightListHeaderOpacity = 0.0;
  double verticalFlightListOpacity = 0.0;
  int counter = 1;
  double horizontalListOpacity = 0.0;
  double bigContainerHeight = 0.2;
  double placerContainerHeight = 0.20;
  @override
  Widget build(BuildContext context) {
    print(bigContainerHeight);
    print(placerContainerHeight);

    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);
    void animateContainerUp() {
      setState(() {
        isContainerDown = false;
        placerContainerHeight = 0.0;
        bigContainerHeight = 0.7;
        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            flightListHeaderOpacity = 1.0;
            verticalFlightListOpacity = 1.0;
            horizontalListOpacity = 1.0;
          });
        });
      });
    }

    void animateContainerDown() {
      setState(() {
        flightListHeaderOpacity = 0.0;

        placerContainerHeight = 0.2;
        bigContainerHeight = 0.2;
        horizontalListOpacity = 0.0;
        verticalFlightListOpacity = 0.0;
        isContainerDown = true;
      });
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        print(counter);
        return Stack(children: <Widget>[
          Positioned(
            bottom: constraints.maxHeight * 0,
            child: GestureDetector(
                onTap: () {
                  if (isContainerDown == true) {
                    animateContainerUp();
                  }
                },
                child: AnimatedContainer(
                    curve: Curves.easeInOutCubic,
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(constraints.maxWidth * 0.04)),
                    height: constraints.maxHeight * bigContainerHeight,
                    width: constraints.maxWidth,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 100),
                            opacity: flightListHeaderOpacity,
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.03),
                              color: Colors.transparent,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.03),
                                    child: GestureDetector(
                                      onTap: animateContainerDown,
                                      child: Icon(Icons.arrow_back,
                                          color: Colors.black,
                                          size: constraints.maxWidth * 0.06),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.05),
                                    child: Text(
                                      'Lista de Voos',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize:
                                              constraints.maxHeight * 0.03),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.42),
                                    child: Icon(Icons.calendar_today,
                                        color: Colors.black,
                                        size: constraints.maxWidth * 0.06),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: 100),
                              opacity: horizontalListOpacity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 25,
                                itemBuilder: (BuildContext context, int Index) {
                                  return Container(
                                    height: constraints.maxHeight * 0.01,
                                    margin: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.02),
                                    width: constraints.maxWidth * 0.12,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text('D',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontSize:
                                                  constraints.maxHeight * 0.02,
                                            )),
                                        Text('21',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black26,
                                              fontSize:
                                                  constraints.maxHeight * 0.02,
                                            )),
                                        Container(
                                          width: constraints.maxWidth * 0.085,
                                          height: constraints.maxHeight * 0.07,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      constraints.maxWidth *
                                                          0.01)),
                                        ),
                                        Text('R\$899,90',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.black38,
                                              fontSize:
                                                  constraints.maxHeight * 0.014,
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                              color: Colors.white,
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 300),
                                opacity: verticalFlightListOpacity,
                                child: Container(
                                    color: Colors.white,
                                    height: constraints.maxHeight * 0.3,
                                    width: constraints.maxWidth,
                                    child: ListView.builder(
                                      itemCount: 20,
                                      itemBuilder:
                                          (BuildContext context, int Index) {
                                        return Container(
                                          height: constraints.maxHeight * 0.15,
                                          margin: EdgeInsets.only(
                                              left: constraints.maxWidth * 0.05,
                                              right:
                                                  constraints.maxWidth * 0.05,
                                              bottom:
                                                  constraints.maxHeight * 0.02),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black12,
                                                  width: constraints.maxWidth *
                                                      0.003),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      constraints.maxWidth *
                                                          0.02)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: constraints.maxHeight *
                                                        0.03),
                                                width:
                                                    constraints.maxWidth * 0.2,
                                                color: Colors.transparent,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      '9:50',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black,
                                                        fontSize: constraints
                                                                .maxHeight *
                                                            0.035,
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: constraints
                                                                  .maxHeight *
                                                              0.005),
                                                      child: Text(
                                                        'CTU',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color:
                                                                Colors.black12,
                                                            fontSize: constraints
                                                                    .maxHeight *
                                                                0.02),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    constraints.maxWidth * 0.4,
                                                color: Colors.transparent,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Container(
                                                      height: constraints
                                                              .maxHeight *
                                                          0.04,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Text(
                                                          '14/05/2019',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              color: Colors
                                                                  .black26,
                                                              fontSize: constraints
                                                                      .maxHeight *
                                                                  0.022),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          bottom: constraints
                                                                  .maxHeight *
                                                              0.02),
                                                      height: constraints
                                                              .maxHeight *
                                                          0.01,
                                                      child: Center(
                                                        child: Text(
                                                          'R\$749,90',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              color: Colors
                                                                  .black87,
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
                                                padding: EdgeInsets.only(
                                                    top: constraints.maxHeight *
                                                        0.03),
                                                width:
                                                    constraints.maxWidth * 0.2,
                                                color: Colors.transparent,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      '12:50',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black,
                                                        fontSize: constraints
                                                                .maxHeight *
                                                            0.035,
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: constraints
                                                                  .maxHeight *
                                                              0.005),
                                                      child: Text(
                                                        'CGT',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color:
                                                                Colors.black12,
                                                            fontSize: constraints
                                                                    .maxHeight *
                                                                0.02),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    )),
                              )),
                        ),
                      ],
                    ))
                // child: AnimatedContainer(
                //   decoration: BoxDecoration(
                //       color: Colors.red,
                //       borderRadius:
                //           BorderRadius.circular(constraints.maxWidth * 0.05)),
                //   duration: Duration(milliseconds: 400),
                //   curve: Curves.easeIn,
                //   height: constraints.maxHeight * bigContainerHeight,
                //   child: Container(
                //     color: Colors.red,
                //     height: 30,
                //   ),
                // ),
                ),
          ),
        ]);
      },
    );
  }
}
