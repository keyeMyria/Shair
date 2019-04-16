import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';

class ShairBloc implements BlocBase {
  var _botaoAviaoController = StreamController<String>.broadcast();
  var _botaoAssentoController = StreamController<String>.broadcast();
  var _botaoPartidaController = StreamController<String>.broadcast();
  var _botaoDestinoController = StreamController<String>.broadcast();
  var _botaoProcurarController = StreamController<String>.broadcast();
  var _activatorsController = StreamController<String>.broadcast();
  var _menuController = StreamController<String>.broadcast();
  var _flightListOpacityController = StreamController<double>.broadcast();
  var _weekHorizontalFlightListOpacityController =
      StreamController<double>.broadcast();
  var _canShowFlightListController = StreamController<bool>.broadcast();

  Stream<String> get botaoAviaoState => _botaoAviaoController.stream;
  Stream<String> get botaoAssentoState => _botaoAssentoController.stream;
  Stream<String> get botaoPartidaState => _botaoPartidaController.stream;
  Stream<String> get botaoDestinoState => _botaoDestinoController.stream;
  Stream<String> get botaoProcurarState => _botaoProcurarController.stream;
  Stream<String> get activatorsState => _activatorsController.stream;
  Stream<String> get menuState => _menuController.stream;
  Stream<double> get flightListOpacityState =>
      _flightListOpacityController.stream;
  Stream<double> get weekHorizontalFlightListOpacityState =>
      _weekHorizontalFlightListOpacityController.stream;
  Stream<bool> get canShowFlightListState =>
      _canShowFlightListController.stream;

  Sink<String> get newBotaoAviaoState => _botaoAviaoController.sink;
  Sink<String> get newBotaoAssentoState => _botaoAssentoController.sink;
  Sink<String> get newBotaoPartidaState => _botaoPartidaController.sink;
  Sink<String> get newBotaoDestinoState => _botaoDestinoController.sink;
  Sink<String> get newBotaoProcurarState => _botaoProcurarController.sink;
  Sink<String> get newActivatorsState => _activatorsController.sink;
  Sink<String> get newMenuState => _menuController.sink;
  Sink<double> get newFlightListOpacitystate =>
      _flightListOpacityController.sink;
  Sink<double> get newWeekHorizontalFlighListOpacityState =>
      _weekHorizontalFlightListOpacityController.sink;
  Sink<bool> get newCanShowFlightListState => _canShowFlightListController.sink;

  void setCanShowFlightListToTrue() {
    newCanShowFlightListState.add(true);
  }

  void setCanShowFlightListToFalse() {
    newCanShowFlightListState.add(false);
  }

  void weekHorizontalFlightListFadeIn() {
    Future.delayed(Duration(milliseconds: 700), () {
      newWeekHorizontalFlighListOpacityState.add(1.0);
    });
  }

  void weekHorizontalFlightListFadeOut() {
    newWeekHorizontalFlighListOpacityState.add(0.0);
  }

  void flightListFadeIn() {
    Future.delayed(Duration(milliseconds: 600), () {
      newFlightListOpacitystate.add(1.0);
    });
  }

  void flightListFadeOut() {
    newFlightListOpacitystate.add(0.0);
  }

  void showMenu() {
    newMenuState.add('menuAbre');
  }

  void closeMenu() {
    newMenuState.add('menuFecha');
  }

  void changeActivatorsToTelaUmConfiguration() {
    newActivatorsState.add('TelaUmConfiguration');
  }

  void changeActivatorsToTelaDoisonfiguration() {
    newActivatorsState.add('TelaDoisConfiguration');
  }

  void botaoProcurarSobe() {
    newBotaoProcurarState.add('telaDoisSubindo');
    changeActivatorsToTelaDoisonfiguration();
  }

  void botaoProcurarDesce() {
    newBotaoProcurarState.add('telaDoisDescendo');
    changeActivatorsToTelaUmConfiguration();
  }

  void botaoAviaoPreenche() {
    newBotaoAviaoState.add('botaoAviaoPreenche');
  }

  void botaoAviaoDespreenche() {
    newBotaoAviaoState.add('botaoAviaoDespreenche');
  }

  void botaoAssentoPreenche() {
    newBotaoAssentoState.add('botaoAssentoPreenche');
  }

  void botaoAssentoDespreenche() {
    newBotaoAssentoState.add('botaoAssentoDespreenche');
  }

  void botaoPartidaFade() {
    newBotaoPartidaState.add('partidaSome');
  }

  void botaoDestinoFade() {
    newBotaoDestinoState.add('destinoSome');
  }

  @override
  dispose() {
    _canShowFlightListController.close();
    _weekHorizontalFlightListOpacityController.close();
    _flightListOpacityController.close();
    _menuController.close();
    _activatorsController.close();
    _botaoAviaoController.close();
    _botaoAssentoController.close();
    _botaoPartidaController.close();
    _botaoDestinoController.close();
    _botaoProcurarController.close();
  }
}
