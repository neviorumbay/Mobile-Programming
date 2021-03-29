part of 'importutils.dart';

class BtnBack extends StatelessWidget {
  const BtnBack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.all(20),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: warnaUtama,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_left,
            color: putih,
          ),
        ),
      ),
    );
  }
}
