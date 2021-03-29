part of 'importutils.dart';

dialogDaftarSukses(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: putih,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: warnaUtama,
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.done,
                      color: putih,
                      size: 50,
                    ),
                  ),
                ),
                Text(
                  'Pendaftaran \nBerhasil',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: warnaUtama,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: warnaUtama,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    child: Text('Masuk'),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

dialoggagal(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop(true);
        });
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: putih,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: putih,
                      size: 50,
                    ),
                  ),
                ),
                Text(
                  'Periksa Kembali \nInputan Anda.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: warnaUtama,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

dialogmencari(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(true);
        });
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: putih,
              image: DecorationImage(
                image: AssetImage('assets/mencari.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      });
}

dialogsampai(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(true);
          Navigator.of(context).pop(true);
        });
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: putih,
              image: DecorationImage(
                image: AssetImage('assets/sampai.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      });
}

dialoglogin(BuildContext context, Function navigator) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 6), navigator);
        return Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: putih,
            ),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      });
}
