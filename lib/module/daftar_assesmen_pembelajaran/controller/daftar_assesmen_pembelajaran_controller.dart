
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/daftar_assesmen_pembelajaran_view.dart';

class DaftarAssesmenPembelajaranController extends State<DaftarAssesmenPembelajaranView> {
    static late DaftarAssesmenPembelajaranController instance;
    late DaftarAssesmenPembelajaranView view;

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
        
    