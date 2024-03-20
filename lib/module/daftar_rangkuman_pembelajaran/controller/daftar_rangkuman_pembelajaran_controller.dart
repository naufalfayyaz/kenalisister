
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/daftar_rangkuman_pembelajaran_view.dart';

class DaftarRangkumanPembelajaranController extends State<DaftarRangkumanPembelajaranView> {
    static late DaftarRangkumanPembelajaranController instance;
    late DaftarRangkumanPembelajaranView view;

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
        
    