
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/daftar_artikel_pembelajaran_view.dart';

class DaftarArtikelPembelajaranController extends State<DaftarArtikelPembelajaranView> {
    static late DaftarArtikelPembelajaranController instance;
    late DaftarArtikelPembelajaranView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    