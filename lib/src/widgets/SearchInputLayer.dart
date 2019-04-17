import 'package:flutter/material.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class SearchInputLayer extends StatefulWidget {
  @override
  _SearchInputLayerState createState() => _SearchInputLayerState();
}

class _SearchInputLayerState extends State<SearchInputLayer> {
  CrossFadeState crossFadePartida = CrossFadeState.showFirst;
  CrossFadeState crossFadeDestino = CrossFadeState.showFirst;

  bool enableStateDestino = false;
  double numOneDestino = 0.075;
  String userInputDestino = '';

  List<String> citiesDestino = [
    "Sao Paulo",
    "Rio de Janeiro",
    "Morro de Sao Paulo",
    "Sao Jose dos Campos"
  ];
  bool enableStatePartida = false;
  double numOnePartida = 0.075;
  String userInputPartida = '';

  List<String> citiesPartida = [
    "Sao Paulo",
    "Rio de Janeiro",
    "Morro de Sao Paulo",
    "Sao Jose dos Campos"
  ];
  TextEditingController myControllerPartida = new TextEditingController();
  TextEditingController myControllerDestino = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);
    List<String> suggestedListDestino =
        citiesDestino.where((p) => p.contains(userInputDestino)).toList();

    void changeUserInputDestino(String someInput) {
      setState(() {
        userInputDestino = someInput;
        suggestedListDestino = suggestedListDestino
            .where((p) => p.contains(userInputDestino))
            .toList();
        if (suggestedListDestino.length == 1) {
          setState(() {
            numOneDestino = 0.21;
          });
        }
        if (suggestedListDestino.length > 1 || userInputDestino == '') {
          setState(() {
            numOneDestino = 0.325;
          });
        }
        if (suggestedListDestino.length < 1 ||
            (suggestedListDestino.length < 1 && userInputDestino == '')) {
          setState(() {
            numOneDestino = 0.075;
          });
        }
      });
    }

    List<String> suggestedListPartida =
        citiesPartida.where((p) => p.contains(userInputPartida)).toList();

    void changeUserInputPartida(String someInput) {
      setState(() {
        userInputPartida = someInput;
        suggestedListPartida = suggestedListPartida
            .where((p) => p.contains(userInputPartida))
            .toList();
        if (suggestedListPartida.length == 1) {
          setState(() {
            numOnePartida = 0.21;
          });
        }
        if (suggestedListPartida.length > 1 || userInputPartida == '') {
          setState(() {
            numOnePartida = 0.325;
          });
        }
        if (suggestedListPartida.length < 1 ||
            (suggestedListPartida.length < 1 && userInputPartida == '')) {
          setState(() {
            numOnePartida = 0.075;
          });
        }
      });
    }

    return WillPopScope(
      onWillPop: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        setState(() {
          numOneDestino = 0.075;
          numOnePartida = 0.075;
          crossFadePartida = CrossFadeState.showFirst;
          crossFadeDestino = CrossFadeState.showFirst;
        });
      },
      child: Stack(
        children: <Widget>[
          StreamBuilder(
            stream: shairBloc.botaoPartidaState,
            builder: (context, snapshot) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: <Widget>[
                      WillPopScope(
                        onWillPop: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          setState(() {
                            numOneDestino = 0.075;
                          });
                        },
                        child: Positioned(
                          top: constraints.maxHeight * 0.195,
                          left: constraints.maxWidth * 0.045,
                          right: constraints.maxWidth * 0.045,
                          child: GestureDetector(
                            onTap: () {
                              if (numOnePartida == 0.075) {
                                setState(() {
                                  numOneDestino = 0.3;
                                  crossFadeDestino = CrossFadeState.showSecond;
                                });
                              }
                            },
                            child: Card(
                              elevation: 3.0,
                              clipBehavior: Clip.none,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.05,
                                        top: constraints.maxWidth * 0.012,
                                      ),
                                      height: constraints.maxHeight * 0.065,
                                      width: constraints.maxWidth * 0.91,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              left:
                                                  constraints.maxWidth * 0.750,
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                  bottom:
                                                      constraints.maxHeight *
                                                          0.01,
                                                ),
                                                height: constraints.maxHeight *
                                                    0.075,
                                                width:
                                                    constraints.maxWidth * 0.1,
                                                color: Colors.transparent,
                                                child: Center(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if (crossFadeDestino ==
                                                          CrossFadeState
                                                              .showSecond) {
                                                        setState(() {
                                                          myControllerDestino
                                                              .text = '';
                                                          numOneDestino = 0.075;
                                                          crossFadeDestino =
                                                              CrossFadeState
                                                                  .showFirst;

                                                          enableStateDestino =
                                                              false;
                                                          FocusScope.of(context)
                                                              .requestFocus(
                                                                  new FocusNode());
                                                        });
                                                      }
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          right: constraints
                                                                  .maxWidth *
                                                              0.05),
                                                      color: Colors.transparent,
                                                      child: AnimatedCrossFade(
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        crossFadeState:
                                                            crossFadeDestino,
                                                        firstChild: Icon(
                                                          IconData(0xe900,
                                                              fontFamily:
                                                                  'Location'),
                                                          size: constraints
                                                                  .maxHeight *
                                                              0.03,
                                                        ),
                                                        // firstChild: Icon(
                                                        //   Icons.adjust,
                                                        //   color: Colors.black,
                                                        //   size: constraints
                                                        //           .maxHeight *
                                                        //       0.03,
                                                        // ),
                                                        secondChild: Icon(
                                                          Icons.close,
                                                          color: Colors.black,
                                                          size: constraints
                                                                  .maxHeight *
                                                              0.03,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              margin: EdgeInsets.only(
                                                  right: constraints.maxWidth *
                                                      0.12),
                                              child: TextField(
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                  fontSize:
                                                      constraints.maxHeight *
                                                          0.03,
                                                ),
                                                controller: myControllerDestino,
                                                enabled: true,
                                                onChanged: (input) =>
                                                    changeUserInputDestino(
                                                        input),
                                                decoration: InputDecoration(
                                                  suffixText: 'CNF',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey[200],
                                                      fontSize: constraints
                                                              .maxHeight *
                                                          0.03),
                                                  border: InputBorder.none,
                                                  hintText: 'Destino',
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    enableStateDestino = true;
                                                    numOneDestino = 0.075;
                                                    Future.delayed(
                                                        Duration(
                                                            milliseconds: 300),
                                                        () {
                                                      setState(() {
                                                        numOneDestino = 0.325;
                                                        crossFadeDestino =
                                                            CrossFadeState
                                                                .showSecond;
                                                      });
                                                    });
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: ListView.builder(
                                          itemCount:
                                              suggestedListDestino.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .requestFocus(
                                                        new FocusNode());
                                                setState(() {
                                                  myControllerDestino.text =
                                                      suggestedListDestino[
                                                          index];
                                                  numOneDestino = 0.075;
                                                  crossFadeDestino =
                                                      CrossFadeState.showFirst;

                                                  enableStateDestino = false;
                                                });
                                              },
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        width: constraints
                                                                .maxWidth *
                                                            0.2,
                                                        child: Center(
                                                          child: Icon(Icons
                                                              .donut_large),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: constraints
                                                                  .maxHeight *
                                                              0.02),
                                                      width:
                                                          constraints.maxWidth *
                                                              0.75,
                                                      color: Colors.transparent,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: <Widget>[
                                                              Container(
                                                                padding: EdgeInsets.only(
                                                                    right: constraints
                                                                            .maxWidth *
                                                                        0.05,
                                                                    top: constraints
                                                                            .maxHeight *
                                                                        0.01),
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Text(
                                                                      suggestedListDestino[
                                                                          index],
                                                                      textAlign:
                                                                          TextAlign
                                                                              .justify,
                                                                      style:
                                                                          TextStyle(
                                                                        decoration:
                                                                            TextDecoration.none,
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            constraints.maxHeight *
                                                                                0.03,
                                                                      )),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  padding: EdgeInsets.only(
                                                                      top: constraints
                                                                              .maxHeight *
                                                                          0.01),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Text(
                                                                        'CNF',
                                                                        textAlign:
                                                                            TextAlign
                                                                                .justify,
                                                                        style:
                                                                            TextStyle(
                                                                          decoration:
                                                                              TextDecoration.none,
                                                                          color:
                                                                              Colors.grey[300],
                                                                          fontSize:
                                                                              constraints.maxHeight * 0.03,
                                                                        )),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                    'Aeroporto Internacional Tancredo Neves',
                                                                    style:
                                                                        TextStyle(
                                                                      decoration:
                                                                          TextDecoration
                                                                              .none,
                                                                      color: Colors
                                                                              .grey[
                                                                          400],
                                                                      fontSize:
                                                                          constraints.maxHeight *
                                                                              0.02,
                                                                    )),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                height: constraints.maxHeight *
                                                    0.117,
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: Colors
                                                              .grey[300])),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                height: constraints.maxHeight * numOneDestino,
                                width: constraints.maxWidth * 0.91,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        constraints.maxWidth * 0.03)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
          ),
          StreamBuilder(
            stream: shairBloc.botaoPartidaState,
            builder: (context, snapshot) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: <Widget>[
                      WillPopScope(
                        onWillPop: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          setState(() {
                            numOnePartida = 0.075;
                            crossFadePartida = CrossFadeState.showSecond;
                          });
                        },
                        child: Positioned(
                          top: constraints.maxHeight * 0.105,
                          left: constraints.maxWidth * 0.045,
                          right: constraints.maxWidth * 0.045,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                numOneDestino = 0.075;
                                numOnePartida = 0.3;
                                crossFadePartida = CrossFadeState.showSecond;
                              });
                            },
                            child: Card(
                              elevation: 3.0,
                              clipBehavior: Clip.none,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.05,
                                        top: constraints.maxWidth * 0.012,
                                      ),
                                      height: constraints.maxHeight * 0.065,
                                      width: constraints.maxWidth * 0.91,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              left:
                                                  constraints.maxWidth * 0.750,
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                  bottom:
                                                      constraints.maxHeight *
                                                          0.01,
                                                ),
                                                height: constraints.maxHeight *
                                                    0.075,
                                                width:
                                                    constraints.maxWidth * 0.1,
                                                color: Colors.transparent,
                                                child: Center(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if (crossFadePartida ==
                                                          CrossFadeState
                                                              .showSecond) {
                                                        setState(() {
                                                          myControllerPartida
                                                              .text = '';
                                                          numOnePartida = 0.075;
                                                          crossFadePartida =
                                                              CrossFadeState
                                                                  .showFirst;

                                                          enableStatePartida =
                                                              false;
                                                          FocusScope.of(context)
                                                              .requestFocus(
                                                                  new FocusNode());
                                                        });
                                                      }
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          right: constraints
                                                                  .maxWidth *
                                                              0.05),
                                                      color: Colors.transparent,
                                                      child: AnimatedCrossFade(
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        crossFadeState:
                                                            crossFadePartida,
                                                        firstChild: Icon(
                                                          Icons.adjust,
                                                          color: Colors.black,
                                                          size: constraints
                                                                  .maxHeight *
                                                              0.03,
                                                        ),
                                                        secondChild: Icon(
                                                          Icons.close,
                                                          color: Colors.black,
                                                          size: constraints
                                                                  .maxHeight *
                                                              0.03,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              margin: EdgeInsets.only(
                                                  right: constraints.maxWidth *
                                                      0.12),
                                              child: TextField(
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                  fontSize:
                                                      constraints.maxHeight *
                                                          0.03,
                                                ),
                                                controller: myControllerPartida,
                                                enabled: true,
                                                onChanged: (input) =>
                                                    changeUserInputPartida(
                                                        input),
                                                decoration: InputDecoration(
                                                  suffixText: 'CNF',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey[200],
                                                      fontSize: constraints
                                                              .maxHeight *
                                                          0.03),
                                                  border: InputBorder.none,
                                                  hintText: 'Partida',
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent),
                                                  ),
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    enableStatePartida = true;
                                                    numOneDestino = 0.075;
                                                    Future.delayed(
                                                        Duration(
                                                            milliseconds: 300),
                                                        () {
                                                      setState(() {
                                                        numOnePartida = 0.325;
                                                        crossFadePartida =
                                                            CrossFadeState
                                                                .showSecond;
                                                      });
                                                    });
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: ListView.builder(
                                          itemCount:
                                              suggestedListPartida.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .requestFocus(
                                                          new FocusNode());
                                                  setState(() {
                                                    myControllerPartida.text =
                                                        suggestedListPartida[
                                                            index];
                                                    numOnePartida = 0.075;
                                                    crossFadePartida =
                                                        CrossFadeState
                                                            .showFirst;

                                                    enableStatePartida = false;
                                                  });
                                                },
                                                child: Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Container(
                                                          color: Colors
                                                              .transparent,
                                                          child: Center(
                                                            child: Icon(Icons
                                                                .donut_large),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: constraints
                                                                  .maxHeight *
                                                              0.02,
                                                        ),
                                                        width: constraints
                                                                .maxWidth *
                                                            0.75,
                                                        color:
                                                            Colors.transparent,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  padding: EdgeInsets.only(
                                                                      right: constraints
                                                                              .maxWidth *
                                                                          0.05,
                                                                      top: constraints
                                                                              .maxHeight *
                                                                          0.01),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Text(
                                                                        suggestedListPartida[
                                                                            index],
                                                                        textAlign:
                                                                            TextAlign
                                                                                .justify,
                                                                        style:
                                                                            TextStyle(
                                                                          decoration:
                                                                              TextDecoration.none,
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              constraints.maxHeight * 0.03,
                                                                        )),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    padding: EdgeInsets.only(
                                                                        top: constraints.maxHeight *
                                                                            0.01),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: Text(
                                                                          'CNF',
                                                                          textAlign: TextAlign
                                                                              .justify,
                                                                          style:
                                                                              TextStyle(
                                                                            decoration:
                                                                                TextDecoration.none,
                                                                            color:
                                                                                Colors.grey[300],
                                                                            fontSize:
                                                                                constraints.maxHeight * 0.03,
                                                                          )),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Text(
                                                                      'Aeroporto Internacional Tancredo Neves',
                                                                      style:
                                                                          TextStyle(
                                                                        decoration:
                                                                            TextDecoration.none,
                                                                        color: Colors
                                                                            .grey[400],
                                                                        fontSize:
                                                                            constraints.maxHeight *
                                                                                0.02,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  height:
                                                      constraints.maxHeight *
                                                          0.117,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color: Colors
                                                                .grey[300])),
                                                  ),
                                                ));
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                height: constraints.maxHeight * numOnePartida,
                                width: constraints.maxWidth * 0.91,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        constraints.maxWidth * 0.03)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
