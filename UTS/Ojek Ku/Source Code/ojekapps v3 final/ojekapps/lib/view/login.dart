part of 'importview.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final email = 'demo@mail.com';
  final pass = 'demo12345';

  TextEditingController mail = TextEditingController();
  TextEditingController pas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image(
                          image: Svg('assets/logo.svg'),
                        ),
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: hitam,
                        ),
                      ),
                      Container(
                        height: 4,
                        width: 50,
                        color: warnaUtama,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Selamat Datang! Silahkan Masukkan Email dan Password Anda yang Terdaftar.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: hitam,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: mail,
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.alternate_email_rounded,
                            size: 22,
                          ),
                          fillColor: Colors.grey.withOpacity(0.3),
                          hintText: 'Masukkan Email',
                          hintStyle: GoogleFonts.poppins(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) => validateemail(value),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: pas,
                        obscureText: true,
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_open_rounded,
                            size: 22,
                          ),
                          fillColor: Colors.grey.withOpacity(0.3),
                          hintText: 'Masukkan Password',
                          hintStyle: GoogleFonts.poppins(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) => validatepassword(value),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: warnaUtama,
                            onPrimary: putih,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            textStyle: GoogleFonts.poppins(),
                          ),
                          onPressed: () {
                            print(mail.text + 'dan' + pas.text);
                            if (_formKey.currentState.validate()) {
                              if (mail.text == email && pas.text == pass) {
                                dialoglogin(context, () async {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setString('email', 'demo@mail.com');
                                });
                              } else {
                                dialoglogin(context, () {
                                  Navigator.pop(context);
                                  dialoggagal(context);
                                });
                              }
                            }
                          },
                          child: Text('Masuk'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BtnBack(),
          ],
        ),
      ),
    );
  }
}
