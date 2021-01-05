import 'package:flutter/material.dart';
import 'main.dart';
const hauteurContainerInferieur= 80.0;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('IMC Calculatrice'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color:Color(0xFFEB1555),
            margin:EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: hauteurContainerInferieur,
          )
        ],
      ),
    );
  }
}

class CarteReutilisable extends StatelessWidget {
  //const CarteReutilisable({
  // Key key,
  //}) :super(key: key);
  final Color couleur;
  CarteReutilisable ({@required this.couleur});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}