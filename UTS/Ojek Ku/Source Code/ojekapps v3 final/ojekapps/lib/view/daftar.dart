part of 'importview.dart';

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool terima = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController pass;

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
                        'Daftar',
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
                        'Selamat Datang! Buat Akun Ojek Ku  untuk Menikmati Fitur yang tersedia.',
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
                        controller: pass,
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
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            size: 22,
                          ),
                          fillColor: Colors.grey.withOpacity(0.3),
                          hintText: 'Konfirmasi Password',
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
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: terima,
                            onChanged: (value) {
                              setState(() {
                                terima = value;
                              });
                            },
                          ),
                          Text(
                            'Saya menyetujui Persyaratan \nPengguna yang berlaku.',
                            style: GoogleFonts.poppins(),
                          )
                        ],
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
                            if (_formKey.currentState.validate()) {
                              dialogDaftarSukses(context);
                            }
                          },
                          child: Text('Daftar'),
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
