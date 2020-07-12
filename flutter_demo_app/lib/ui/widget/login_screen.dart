import 'package:flutter/material.dart';
import 'package:flutterdemoapp/ui/widget/first_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();
  GlobalKey<FormState> _textFormKey = GlobalKey<FormState>();
  String title;
  int count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = 'heell';
    count = 0;
    _controller.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('0');

    return Scaffold(
      body: Center(
        child: Form(
          key: _textFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$title', style: TextStyle(color: Colors.black, fontSize: 32),),
              Text(
                '$count', style: TextStyle(color: Colors.black, fontSize: 32),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _controller,
                  obscureText: true,
                  // Password
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  cursorColor: Colors.black,
//          maxLines: 2,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.add),
                      // Icon phía trước
                      suffixIcon: Icon(Icons.clear),
                      // Icon phía sau
                      labelText: 'Email',
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 20),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue[800], width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.pink))),
                  validator: (value) {
                    if (value.isEmpty) return 'Not Null';
                    return null;
                  },
                  onSaved: (value) => debugPrint('onSave: $value'),
                  onChanged: (value) {
                    count++;
                    setState(() {

                    });
                  },
                ),
              ),
              RaisedButton(
                onPressed: () => onPress(context),
//                    Navigator.of(context).push(
//                        MaterialPageRoute(builder: (_) => FirstScreen())),
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPress(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    if (_textFormKey.currentState.validate()) {
      print('text: ${_controller.text}');
      title = _controller.text;
      setState(() {

      });
    }
  }

  void listener() {
    debugPrint('typing: ${_controller.text}');
  }
}
