import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:webview_flutter/webview_flutter.dart';

class MapContainerLayer extends StatefulWidget {
  @override
  _MapContainerLayerState createState() => _MapContainerLayerState();
}

String url = "https://yodart.github.io/MapaTeste/";

class _MapContainerLayerState extends State<MapContainerLayer> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
