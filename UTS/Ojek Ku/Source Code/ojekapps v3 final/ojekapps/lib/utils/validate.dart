part of 'importutils.dart';

String validateemail(String value) {
  Pattern pattern = r'^(?=.*?[@])';
  RegExp regex = new RegExp(pattern);
  print(value);
  if (value.isEmpty) {
    return 'Email harus di isi.';
  } else {
    if (!regex.hasMatch(value))
      return 'Masukan Email yang valid.';
    else
      return null;
  }
}

String validatepassword(String value) {
  Pattern pattern = r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  RegExp regex = new RegExp(pattern);
  print(value);
  if (value.isEmpty) {
    return 'Password harus di isi.';
  } else if (value.length < 8) {
    return 'Password terlalu pendek.';
  } else {
    if (!regex.hasMatch(value))
      return 'Masukan Password yang valid.';
    else
      return null;
  }
}

String validatecompare(String value, String val) {
  Pattern pattern = r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  RegExp regex = new RegExp(pattern);
  print(value);
  if (value.isEmpty) {
    return 'Password harus di isi.';
  } else if (value.length < 8) {
    return 'Password terlalu pendek.';
  } else if (value != val) {
    return 'Password tidak cocok';
  } else {
    if (!regex.hasMatch(value))
      return 'Masukan Password yang valid.';
    else
      return null;
  }
}
