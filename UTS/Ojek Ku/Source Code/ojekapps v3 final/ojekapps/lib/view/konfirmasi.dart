part of 'importview.dart';

class Konfirmasi extends StatefulWidget {
  @override
  _KonfirmasiState createState() => _KonfirmasiState();
}

class _KonfirmasiState extends State<Konfirmasi> {
  String dropdownValue = 'Pilih Metode Pembayaran';
  bool mencari = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lokasi Penjemputan',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: hitam.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on,
                        color: warnaUtama,
                        size: 28,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Lokasi Saat Ini',
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lokasi Tujuan',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: hitam.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on,
                        color: warnaUtama,
                        size: 28,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Monumen Nasional',
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Total Ongkos',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Rp. 24.000/orang',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: hitam.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: hitam),
                    underline: Container(
                      height: 2,
                      color: Colors.transparent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Pilih Metode Pembayaran', 'Cash']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: mencari,
                  child: Text(
                    'Status',
                    style: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: mencari,
                  child: Text(
                    'Dalam Perjalanan',
                    style: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: mencari,
                  child: Text(
                    '* Konfirmasi bahwa anda telah sampai tujuan\n   dengan menekan tombol Telah Sampai.',
                    style: GoogleFonts.poppins(fontSize: 12, color: warnaUtama),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              height: 50,
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
                  if (mencari == false) {
                    if (dropdownValue != 'Pilih Metode Pembayaran') {
                      dialogmencari(context);
                      setState(() {
                        mencari = true;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Pilih Metode Bayar!'),
                        ),
                      );
                    }
                  } else {
                    dialogsampai(context);
                  }
                },
                child:
                    Text(mencari == false ? 'Pesan Sekarang' : 'Telah Sampai'),
              ),
            ),
          ),
          BtnBack(),
        ],
      )),
    );
  }
}
