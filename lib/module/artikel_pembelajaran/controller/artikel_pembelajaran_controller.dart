
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/artikel_pembelajaran_view.dart';

class ArtikelPembelajaranController extends State<ArtikelPembelajaranView> {
    static late ArtikelPembelajaranController instance;
    late ArtikelPembelajaranView view;

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
        
    