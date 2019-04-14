import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/services.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.grey[200], // status bar color
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(ShairScreenOne());
}

class ShairScreenOne extends StatefulWidget {
  @override
  _ShairScreenOneState createState() => _ShairScreenOneState();
}

class _ShairScreenOneState extends State<ShairScreenOne> {
  String animacaoBotaoAviao = '';
  String animacaoBotaoAviaoState = '';
  String animacaoBotaoAssento = '';
  String animacaoBotaoAssentoState = '';
  String animacaoBotaoPartida = '';
  String animacaoBotaoDestino = '';
  String animacaoBotoesIdaEVolta = '';
  String animacaoTelaDois = '';

  void playTelaDoisTransition() {
    setState(() {
      animacaoTelaDois = 'telaDoisSubindo';
    });
  }

  void playSoIdaPreenche() {
    setState(() {
      animacaoBotoesIdaEVolta = 'soIdaPreenche';
    });
  }

  void playIdaEVoltaPreenche() {
    setState(() {
      animacaoBotoesIdaEVolta = 'idaEVoltaPreenche';
    });
  }

  void playDestinoSome() {
    setState(() {
      animacaoBotaoDestino = 'destinoSome';
    });
  }

  void playPartidaSome() {
    setState(() {
      animacaoBotaoPartida = 'partidaSome';
    });
  }

  void playBotaoAviaoPreenche() {
    setState(() {
      animacaoBotaoAviao = 'botaoAviaoPreenche';
      animacaoBotaoAviaoState = 'aviaoPreenchido';
    });
  }

  void playBotaoAviaoDespreenche() {
    setState(() {
      animacaoBotaoAviao = 'botaoAviaoDespreenche';
      animacaoBotaoAviaoState = 'aviaoDespreenchido';
    });
  }

  void playBotaoAssentoPreenche() {
    setState(() {
      animacaoBotaoAssento = 'botaoAssentoPreenche';
      animacaoBotaoAssentoState = 'assentoPreenchido';
    });
  }

  void playBotaoAssentoDespreenche() {
    setState(() {
      animacaoBotaoAssento = 'botaoAssentoDespreenche';
      animacaoBotaoAssentoState = 'assentoDespreenchido';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/quadroDegrade.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: '')),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/voosPopulares.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: '')),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/botoesIdaEIdaEVolta.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoBotoesIdaEVolta)),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/botaoAviao.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoBotaoAviao)),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/botaoAssento.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoBotaoAssento)),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/botaoPartida.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoBotaoPartida)),
                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/botaoDestino.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoBotaoDestino)),
                //***voos populares */
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
                            width: constraints.maxWidth * 0.45,
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/saopaulo.jpg'),
                                          fit: BoxFit.fill),
                                    ),
                                    height: constraints.maxHeight * 0.13,
                                    width: constraints.maxWidth * 0.45),
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
                          Container(
                            padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.045,
                            ),
                            width: constraints.maxWidth * 0.45,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    color: Colors.white,
                                    width: constraints.maxWidth * 0.45),
                                Container(
                                  height: constraints.maxHeight * 0.02,
                                  width: constraints.maxWidth * 0.45,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.045,
                            ),
                            width: constraints.maxWidth * 0.45,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    color: Colors.white,
                                    width: constraints.maxWidth * 0.45),
                                Container(
                                  height: constraints.maxHeight * 0.02,
                                  width: constraints.maxWidth * 0.45,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),

                Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: FlareActor('assets/telaDois.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animacaoTelaDois)),

                //*******botao procurar */
                Positioned(
                  top: constraints.maxHeight * 0.9,
                  left: constraints.maxWidth * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      playTelaDoisTransition();
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.9,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                //******Botao Aviao********
                Positioned(
                  top: constraints.maxHeight * 0.530,
                  left: constraints.maxWidth * 0.27,
                  child: GestureDetector(
                    onTap: () {
                      if (animacaoBotaoAviaoState == '' &&
                          animacaoBotaoAssento == '') {
                        playBotaoAviaoPreenche();
                      } else if (animacaoBotaoAssentoState ==
                          'assentoPreenchido') {
                        playBotaoAviaoPreenche();
                        playBotaoAssentoDespreenche();
                      }
                    },
                    child: Container(
                        height: constraints.maxHeight * 0.07,
                        width: constraints.maxWidth * 0.16,
                        color: Colors.transparent),
                  ),
                ),
                //*********botao assento */
                Positioned(
                  top: constraints.maxHeight * 0.525,
                  right: constraints.maxWidth * 0.27,
                  child: GestureDetector(
                    onTap: () {
                      if (animacaoBotaoAviaoState == '' &&
                          animacaoBotaoAssentoState == '') {
                        playBotaoAssentoPreenche();
                      } else if (animacaoBotaoAviaoState == 'aviaoPreenchido') {
                        playBotaoAssentoPreenche();
                        playBotaoAviaoDespreenche();
                      }
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.17,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                //**botao ida */
                Positioned(
                  top: constraints.maxHeight * 0.05,
                  left: constraints.maxWidth * 0.23,
                  child: GestureDetector(
                    onTap: () {
                      playSoIdaPreenche();
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.032,
                      width: constraints.maxWidth * 0.24,
                      color: Colors.transparent,
                    ),
                  ),
                ),

                //**botao ida e volta */
                Positioned(
                  top: constraints.maxHeight * 0.05,
                  right: constraints.maxWidth * 0.23,
                  child: GestureDetector(
                    onTap: () {
                      playIdaEVoltaPreenche();
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.032,
                      width: constraints.maxWidth * 0.24,
                      color: Colors.transparent,
                    ),
                  ),
                ),

                //**botao partida */
                Positioned(
                  top: constraints.maxHeight * 0.105,
                  left: constraints.maxWidth * 0.045,
                  child: GestureDetector(
                    onTap: () {
                      playPartidaSome();
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.065,
                      width: constraints.maxWidth * 0.91,
                      color: Colors.transparent,
                    ),
                  ),
                ),

                //**botao destino */
                Positioned(
                  top: constraints.maxHeight * 0.190,
                  left: constraints.maxWidth * 0.045,
                  child: GestureDetector(
                    onTap: () {
                      playDestinoSome();
                    },
                    child: Container(
                      height: constraints.maxHeight * 0.065,
                      width: constraints.maxWidth * 0.91,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
