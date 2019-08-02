import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

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
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/nature.jpg'),
            fit: BoxFit.cover,
            // color: Colors.black87,
            // colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              Form(
                child: Theme(
                    data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20.0,
                          ),
                        )),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Your Phone Number',
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(12)
                            ],
                            keyboardType: TextInputType.phone,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Your Password',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              MaterialButton(
                                height: 40.0,
                                minWidth: 60.0,
                                color: Colors.teal,
                                textColor: Colors.white,
                                child: Text('Login'),
                                onPressed: () => {},
                                splashColor: Colors.greenAccent,
                              ),
                              MaterialButton(
                                height: 40.0,
                                minWidth: 60.0,
                                color: Colors.grey,
                                textColor: Colors.white,
                                child: Text('Sign Up'),
                                onPressed: () => {},
                                splashColor: Colors.redAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
