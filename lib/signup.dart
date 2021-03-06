import 'package:flutter/material.dart';
// import  'category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new SignupPage(),
        routes: <String, WidgetBuilder>{
          // "/Category": (BuildContext context)=> new Category()
        });
  }
}

class SignupPage extends StatefulWidget {
  @override
  State createState() => new SignupPageState();
}



class SignupPageState extends State<SignupPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/pinkbg.jpg"),
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.light,
                      primarySwatch: Colors.pink,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.black45, fontSize: 20.0))),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          
                          controller: username,
                          decoration: new InputDecoration(
                            labelText: "Enter your name",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          
                          controller: email,
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                         
                          controller: password1,
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new TextFormField(
                        
                          controller: password2,
                          decoration: new InputDecoration(
                            labelText: "Confirm Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding:
                              const EdgeInsets.only(bottom: 20.0, top: 20.0),
                        ),
                        new MaterialButton(
                          height: 40.0,
                          minWidth: 300.0,
                          color: Colors.pink[300],
                          textColor: Colors.white,
                          child: new Text("Next"),
                          onPressed: () {
                            //  Navigator.of(context).pushNamed("/Category");
                            if (password1.text == password2.text) {
                              print(username.text);
                              print(password1.text);
                              print(email.text);
                            } else {
                              print("Passsword not match");
                            }
                          },
                          splashColor: Colors.pink[200],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
