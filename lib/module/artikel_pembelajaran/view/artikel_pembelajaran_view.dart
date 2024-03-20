import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class ArtikelPembelajaranView extends StatefulWidget {
  final String title;
  final String subtitle;
  const ArtikelPembelajaranView(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  Widget build(context, ArtikelPembelajaranController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite, //change your color here
        ),
        title: Text(
          title,
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ColumnText(
                  title: "Lorem Ipsum",
                  subtitle:
                      "Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya. Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya. Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya. Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya.Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya.Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya.Jakarta - Rekayasa lalu lintas sistem one way dan contraflow bakal diberlakukan mulai 5 April 2024 di ruas Tol Trans Jawa. Rekayasa lalu lintas ini akan diberlakukan selama arus mudik dan arus balik Lebaran 2024. Hal ini disampaikan oleh Dirjen Perhubungan Darat Kemenhub Hendro Sugianto dalam paparannya. Sistem ini diberlakukan sesuai dengan jadwal. Kendati demikian, jadwal ini juga disesuaikan dengan situasi yang ada di lapangan. Semua ini situasional, tergantung korlantas menyikapi situasi yang ada yang ada, tuturnya."),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ArtikelPembelajaranView> createState() =>
      ArtikelPembelajaranController();
}
