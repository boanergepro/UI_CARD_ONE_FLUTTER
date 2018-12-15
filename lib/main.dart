import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardOne(),
  ));
}

class CardOne extends StatefulWidget {
  @override
  _CardOneState createState() => new _CardOneState();
 }
class _CardOneState extends State<CardOne> {

  Color backgroundColor = Color.fromRGBO(30, 26, 63, 100);
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromRGBO(221, 78, 144, 13),
      Color.fromRGBO(222, 90, 139, 13),
      Color.fromRGBO(224, 111, 129, 13),
      Color.fromRGBO(228, 140, 116, 13)
    ],
  ).createShader(Rect.fromLTWH(0, 20, 160, 150));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Card One', style: TextStyle(fontWeight: FontWeight.bold, )),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 14,),
            Container(
              width: MediaQuery.of(context).size.width / 1.23,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white70, blurRadius: 15)
                ],
                borderRadius: BorderRadius.circular(5),
              // Box decoration takes a gradient
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.1, 0.4, 0.6, 0.9],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Color.fromRGBO(221, 78, 144, 13),
                    Color.fromRGBO(222, 90, 139, 13),
                    Color.fromRGBO(224, 111, 129, 13),
                    Color.fromRGBO(228, 140, 116, 13)
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ListTile(
                    trailing: Text('CARD', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height / 28,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('....', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text('....', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text('....', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                      Text('0000', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23)),
                      SizedBox(height: MediaQuery.of(context).size.height / 10,),
                    ],
                  ),
                  
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Card Holder', style: TextStyle(color: Colors.white, fontSize: 10),),
                        Container(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 12),
                          child: Text('Expiry', style: TextStyle(color: Colors.white, fontSize: 10),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Your Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.5),),
                        Container(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 16),
                          child: Text('00/00', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),),
                        )
                        //Text('00/00', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.5),),
                      ],
                    )
                  ),
                  
                ],
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20,),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
              child: ListTile(
                title: Text('Your Balance', style: TextStyle(color: Color.fromRGBO(87, 81, 119, 100), fontSize: 14,),),
                subtitle: Text(
                  "\$12,030.20", 
                  style: TextStyle(
                    fontSize: 23, 
                    fontWeight: FontWeight.bold, 
                    //color: Color.fromRGBO(224, 111, 129, 13),
                    foreground: Paint()..shader = linearGradient
                  ),
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Income', style: TextStyle(color: Color.fromRGBO(87, 81, 119, 100), fontSize: 14,),),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 3),
                      child: Text('Expense', style: TextStyle(color: Color.fromRGBO(87, 81, 119, 100), fontSize: 14,),),
                    )
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "+ \$6,250.20", 
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                        color: Color.fromRGBO(121, 115, 163, 100)
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 5),
                      child: Text(
                        "- \$2,199.20", 
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold, 
                          color: Color.fromRGBO(121, 115, 163, 100)
                        ),
                      ),
                    )
                  ],
                )
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 14,),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 20)
                ],
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topLeft: Radius.circular(20)),
              // Box decoration takes a gradient
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.1, 0.4, 0.6, 0.9],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Color.fromRGBO(221, 78, 144, 13),
                    Color.fromRGBO(222, 90, 139, 13),
                    Color.fromRGBO(224, 111, 129, 13),
                    Color.fromRGBO(228, 140, 116, 13)
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text('More', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              )
            )
          ],
        ),
      ),
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(

        elevation: 8,
        backgroundColor: Color.fromRGBO(220, 76, 145, 10),
        onPressed: () {},
        child: Text('More', style: TextStyle(fontWeight: FontWeight.bold),),
      ),*/
    );
  }
}