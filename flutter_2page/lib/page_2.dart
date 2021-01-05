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
        title: Text('PAGE 2'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Colors.pink,
                    Name:'Academique',
                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Colors.pink,
                    Name:'Professionel',
                  ),
                ),
              ],
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.pink,
              Name:'SAGATHEVAN Bhanujah',
            ),
          ),
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Colors.pink,
                    Name:'Langues',
                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Colors.pink,
                    Name:'Autres',
                  ),
                ),
              ],
            ),
          ),
          /*Container(
            color:Color(0xFFEB1555),
            margin:EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: hauteurContainerInferieur,
          )*/
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
  final String Name;
  CarteReutilisable ({@required this.couleur, this.Name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
        child: Center(
          child: Text(Name, style: TextStyle(color: Colors.white, fontSize: 30.0,fontFamily: 'Source Sans Pro',fontWeight: FontWeight.bold),
          ),
        ),
    );
  }
}
