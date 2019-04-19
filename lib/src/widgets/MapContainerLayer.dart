import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import '../blocs/ShairBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;

class MapContainerLayer extends StatefulWidget {
  @override
  _MapContainerLayerState createState() => _MapContainerLayerState();
}

LatLng _center = LatLng(-39.609, -18.640);

class _MapContainerLayerState extends State<MapContainerLayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterMap(
        options: MapOptions(center: _center),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/rodrygosimoes/cjuo21xp54hih1frz5xn45x9m/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoicm9kcnlnb3NpbW9lcyIsImEiOiJjanVvMWdrb3YwYmk2NDNwaXBpbWl2aGlvIn0.UV2zX-WaLHNZTbZuBxxiQQ",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1Ijoicm9kcnlnb3NpbW9lcyIsImEiOiJjanVvMWdrb3YwYmk2NDNwaXBpbWl2aGlvIn0.UV2zX-WaLHNZTbZuBxxiQQ',
              'id': 'mapbox.mapbox-street-v8'
            },
          )
        ],
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   final ShairBloc shairBloc = BlocProvider.of<ShairBloc>(context);

  //   return StreamBuilder(
  //     stream: shairBloc.botaoProcurarState,
  //     builder: (context, snapshot) {
  //       return LayoutBuilder(
  //         builder: (context, constraints) {
  //           return GestureDetector(
  //               onTap: () {
  //                 setState(() {});
  //                 FocusScope.of(context).requestFocus(new FocusNode());
  //               },
  //               child: Container(
  //                   color: Colors.white,
  //                   child: Stack(
  //                     children: <Widget>[
  //                       Container(
  //                         child: GoogleMap(
  //                           onMapCreated: (GoogleMapController controller) {
  //                             setState(() {
  //                               _controller = controller;
  //                             });
  //                           },
  //                           mapType: MapType.normal,
  //                           initialCameraPosition: CameraPosition(
  //                               target: LatLng(-19.8157, 43.9542)),
  //                         ),
  //                       ),
  //                       Align(
  //                         alignment: Alignment.bottomCenter,
  //                         child: Container(
  //                           height: constraints.maxHeight * 0.35,
  //                           decoration: BoxDecoration(
  //                               color: Colors.grey[50],
  //                               gradient: LinearGradient(
  //                                   begin: FractionalOffset.center,
  //                                   end: FractionalOffset.topCenter,
  //                                   colors: [
  //                                     Colors.grey[50].withOpacity(1.0),
  //                                     Colors.grey[50].withOpacity(0.0)
  //                                   ],
  //                                   stops: [
  //                                     0.0,
  //                                     1.0
  //                                   ])),
  //                         ),
  //                       )
  //                     ],
  //                   )));
  //         },
  //       );
  //     },
  //   );
  // }
}
