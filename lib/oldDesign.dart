import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              color: Colors.white,
            ),
            tripType(),
            Container(
              height: 25.0,
              color: Colors.white,
            ),
            departureLocaltionField("", ""),
            Container(
              height: 15.0,
              color: Colors.white,
            ),
            arrivalLocaltionField("", ""),
            Container(
              height: 15.0,
              color: Colors.white,
            ),
            Container(
              height: 220.0,
              color: Colors.white,
            ),
            Container(
              height: 15.0,
              color: Colors.white,
            ),
            seatType(),
            Container(
              height: 15.0,
              color: Colors.white,
            ),
            popularFlightsText(),
            Container(
              height: 15.0,
              color: Colors.white,
            ),
            popularFlightsList(),
            Container(
              height: 30.0,
              color: Colors.white,
            ),
            searchFlightButton(),
          ],
        ),
      ),
    );
  }
}

Widget tripType() {
  return Container(
    height: 40.0,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Text("Somente Ida",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.grey[350],
                fontSize: 15.0,
              )),
        ),
        Container(
          color: Colors.white,
          child: Text("Ida e Volta",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.grey[350],
                fontSize: 15.0,
              )),
        ),
      ],
    ),
  );
}

Widget departureLocaltionField(String cityName, String airportLatters) {
  return Container(
    margin: EdgeInsets.only(left: 20.0, right: 20.0),
    height: 60.0,
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: Colors.grey[350]),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(cityName,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black87,
                  fontSize: 25.0,
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text(airportLatters,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.grey[350],
                fontSize: 18.0,
              )),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0),
          child: new IconTheme(
            data: new IconThemeData(color: Colors.grey[350]),
            child: new Icon(Icons.adjust),
          ),
          color: Colors.white,
        ),
      ],
    ),
  );
}

Widget arrivalLocaltionField(String cityName, String airportLatters) {
  return Container(
    margin: EdgeInsets.only(left: 20.0, right: 20.0),
    height: 60.0,
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: Colors.grey[350]),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(cityName,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black87,
                  fontSize: 25.0,
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text(airportLatters,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.grey[350],
                fontSize: 18.0,
              )),
        ),
        Container(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.my_location),
          color: Colors.white,
        ),
      ],
    ),
  );
}

Widget seatType() {
  return Container(
    height: 80.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 70.0,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 70.0,
          margin: EdgeInsets.only(left: 30.0, right: 30.0),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: 70.0,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    ),
  );
}

Widget popularFlightsText() {
  return Container(
    height: 30.0,
    child: Container(
      margin: EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Voos Populares",
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black87,
            fontSize: 22.0,
          ),
        ),
      ),
    ),
  );
}

Widget popularFlightsList() {
  return Container(
    height: 100.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          height: 100.0,
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/sp.jpg'), fit: BoxFit.fill),
            border: Border.all(width: 2, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ],
    ),
  );
}

Widget searchFlightButton() {
  return Container(
    height: 80.0,
    margin: EdgeInsets.only(left: 15.0, right: 15.0),
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Center(
      child: Text('Procurar',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 17.0,
          )),
    ),
  );
}
