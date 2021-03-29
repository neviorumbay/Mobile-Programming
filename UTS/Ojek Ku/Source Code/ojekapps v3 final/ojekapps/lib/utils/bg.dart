part of 'importutils.dart';

class BgLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bglanding.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
