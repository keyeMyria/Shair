import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class VoosPopularesLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: constraints.maxHeight * 0.67,
              child: Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.17,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: constraints.maxWidth * 0.045,
                        ),
                        height: constraints.maxHeight * 0.13,
                        width: constraints.maxWidth * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              constraints.maxWidth * 0.04),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: constraints.maxWidth * 0.45,
                                  child: Image.asset('images/saopaulo.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: constraints.maxHeight * 0.04,
                                width: constraints.maxWidth * 0.45,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: constraints.maxWidth * 0.02),
                                      child: Text('São Paulo',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey[300],
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: constraints.maxWidth * 0.02),
                                      child: Text('R\$ 900,99',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey,
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: constraints.maxWidth * 0.045,
                        ),
                        height: constraints.maxHeight * 0.13,
                        width: constraints.maxWidth * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              constraints.maxWidth * 0.04),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: constraints.maxWidth * 0.45,
                                  child: Image.asset('images/rio.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: constraints.maxHeight * 0.04,
                                width: constraints.maxWidth * 0.45,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: constraints.maxWidth * 0.02),
                                      child: Text('Rio',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey[300],
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: constraints.maxWidth * 0.02),
                                      child: Text('R\$ 899,99',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey,
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: constraints.maxWidth * 0.045,
                        ),
                        height: constraints.maxHeight * 0.13,
                        width: constraints.maxWidth * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              constraints.maxWidth * 0.04),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: constraints.maxWidth * 0.45,
                                  child: Image.asset('images/rio.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: constraints.maxHeight * 0.04,
                                width: constraints.maxWidth * 0.45,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: constraints.maxWidth * 0.02),
                                      child: Text('Rio ',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey[300],
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: constraints.maxWidth * 0.02),
                                      child: Text('R\$ 899,99',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.grey,
                                            fontSize:
                                                constraints.maxHeight * 0.02,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        );
      },
    );
  }
}
