import 'package:kenali_sister/core.dart';

class NamaDatabase {
  static String? namaUser = "";

  static load() async {
    namaUser = mainStorage.get("namaUser");
  }

  static save(String namaUser) async {
    mainStorage.put("namaUser", namaUser);
    NamaDatabase.namaUser = namaUser;
  }
}
