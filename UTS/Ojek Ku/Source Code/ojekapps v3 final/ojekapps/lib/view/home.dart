part of 'importview.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String lokasiterpilih;

  GoogleMapController mapController;

  final LatLng _center = const LatLng(-6.175392, 106.827153);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 70, 0, 200),
              height: double.infinity,
              width: double.infinity,
              color: Colors.amber.withOpacity(0.5),
              child: Stack(children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 15.0,
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.location_searching,
                    color: warnaUtama,
                  ),
                )
              ]),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: hitam.withOpacity(0.15),
                        blurRadius: 6,
                        offset: Offset(0, -3))
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mau Kemana Sekarang?',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: hitam,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Lokasi Penjemputan',
                        style: GoogleFonts.poppins(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 60,
                        child: DropdownSearch<String>(
                          mode: Mode.BOTTOM_SHEET,
                          dropdownSearchDecoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: 'Lokasi Saat Ini',
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
                          maxHeight: 350,
                          items: [
                            "Monumen Nasional",
                            "Ancol",
                            "Musium",
                            "Transmart",
                            "Hotel Surya"
                          ],
                          onChanged: print,
                          showSearchBox: true,
                          searchBoxDecoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: 'Masukkan Nama Lokasi',
                            hintStyle: GoogleFonts.poppins(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                          ),
                          popupTitle: Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            height: 50,
                            decoration: BoxDecoration(
                              color: putih,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              'Cari Lokasi',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: hitam,
                              ),
                            ),
                          ),
                          popupShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lokasi Tujuan',
                        style: GoogleFonts.poppins(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 60,
                        child: DropdownSearch<String>(
                          mode: Mode.BOTTOM_SHEET,
                          dropdownSearchDecoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: 'Pilih Lokasi',
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
                          maxHeight: 350,
                          items: [
                            "Monumen Nasional",
                            "Ancol",
                            "Musium",
                            "Transmart",
                            "Hotel Surya"
                          ],
                          onChanged: (val) {
                            setState(() {
                              lokasiterpilih = val;
                            });
                          },
                          showSearchBox: true,
                          searchBoxDecoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            fillColor: Colors.grey.withOpacity(0.3),
                            hintText: 'Masukkan Nama Lokasi',
                            hintStyle: GoogleFonts.poppins(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                          ),
                          popupTitle: Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            height: 50,
                            decoration: BoxDecoration(
                              color: putih,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              'Cari Lokasi',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: hitam,
                              ),
                            ),
                          ),
                          popupShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
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
                            if (lokasiterpilih != null) {
                              dialoglogin(context, () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Konfirmasi()));
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Pilih Lokasi Tujuan Anda!'),
                                ),
                              );
                            }
                          },
                          child: Text('Konfirmasi'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: double.infinity,
              color: warnaUtama,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ojek Ku',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile())),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
