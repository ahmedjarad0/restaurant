import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer ;
  bool _obscure = true;
  String? _errorEmailText;

  String? _errorPasswordText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer= TapGestureRecognizer()..onTap =createNewAccount;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }
  void createNewAccount(){
    print('Create Succssful');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'SING IN',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIGN IN',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Text(
              'Login to continue your account',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade700,
                height: 0.8,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _emailTextController,
              // cursorHeight: 10,
              // cursorColor: Colors.pink,
              // cursorWidth: 10,
              // onChanged: (String value){
              //   print('$value');
              // },
              // onTap: (){
              //   print('ahmewd');
              // },
              // style: TextStyle(
              //   color: Colors.pink,
              //   height:0.8,
              //   fontSize: 16,
              //   // background: Colors.black26,
              //   // backgroundColor: Colors.grey
              //
              // ),
              // readOnly: true,
              enabled: true,
              // obscureText: true,
              // obscuringCharacter: '%',
              maxLength: 25,
              // buildCounter:(
              //     BuildContext context, {
              //     required int currentLength,
              //     required int? maxLength,
              //     required bool isFocused,
              //     }){
              //    return isFocused ? Text('$currentLength-$maxLength'):null ;
              // },
              maxLines: null,
              minLines: null,
              expands: true,

              // expands: true,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                // contentPadding: EdgeInsets.zero,
                constraints: BoxConstraints(
                  maxHeight: _errorEmailText == null ? 50 : 75,
                  minHeight: 50,
                ),
                counterText: '',
                // labelText: 'Email',
                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                // floatingLabelAlignment: FloatingLabelAlignment.start,
                hintText: 'Eamil',
                hintMaxLines: 1,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.email),
                errorText: _errorEmailText,
                errorMaxLines: 1,
                enabled: true,
                //
                // filled: true,
                // prefix: Icon(Icons.email),
                // suffix: Text('@gmail.com'),
                // suffixIcon: Icon(Icons.remove_red_eye),
                // suffixText: '@gmail.com',
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                // helperText: '@gmail.com',
                // errorText: 'Un AAliede',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    )),
                // labelStyle: TextStyle(
                //   color: Colors.red,
                // ),
              ),
              // textCapitalization: TextCapitalization.characters,
              // textInputAction: TextInputAction.send,
              // onSubmitted: (String value){
              //   print('value $value');
              // },
              // keyboardType: TextInputType.numberWithOptions(decimal: false,signed: false),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordTextController,
              obscureText: _obscure,
              // maxLines: 1,
              maxLength: null,
              minLines: null,
              // maxLines: 25,
              expands: false,
              decoration: InputDecoration(
                errorText: _errorPasswordText,
                errorMaxLines: 1,
                enabled: true,
                //
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                constraints: BoxConstraints(
                  maxHeight: _errorPasswordText == null ? 50 : 75,
                  minHeight: 50,
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                    icon: Icon(_obscure
                        ? Icons.remove_red_eye
                        : Icons.visibility_off)),
                hintText: 'Password',
                hintMaxLines: 1,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                performLogin();
              },
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\t hava an account',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.shade700,
                    ),
                    children: [
                      TextSpan(text: ' '),
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'Create NOW!',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Perform Login  --Check Data//(SOLD)
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      _controlerError();
      return true;
    }
    _controlerError();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Erorr enter required data!'),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 3),
      dismissDirection: DismissDirection.horizontal,
    ));
    return false;
  }

  void _controlerError() {
    setState(() {
      _errorEmailText =
          _emailTextController.text.isEmpty ? 'Enter Email' : null;
      _errorPasswordText =
          _passwordTextController.text.isEmpty ? 'Enter Password' : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, 'bottom_navigation_screen');

  }
}
