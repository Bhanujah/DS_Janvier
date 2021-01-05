import 'package:flutter/material.dart';
import 'main.dart';
const hauteurContainerInferieur= 80.0;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
int i=1;
class _InputPageState extends State<InputPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('PAGE 3'),
      ),
      body: Column(
        children: <Widget> [
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.pink,
              Name:'SAGATHEVAN Bhanujah',
            ),

          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.white,
              Name:'LANGUES',
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.pink,
              Name:'Tamoul',
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.pink,
              Name:'Français',
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.pink,
              Name:'Anglais',
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Colors.white,
              Name:'',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.orange,
        onPressed: () {
          setState(() {
            i++;
          });
        },
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
      height: 10.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),

      ),
      child: Center(
        child: Text(Name, style: TextStyle(color: Colors.black, fontSize: 20.0,fontFamily: 'Pacifico',fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
