
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/tentang_aplikasi_view.dart';

class TentangAplikasiController extends State<TentangAplikasiView> {
    static late TentangAplikasiController instance;
    late TentangAplikasiView view;

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
        
    