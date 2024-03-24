
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/hasil_assesment_view.dart';

class HasilAssesmentController extends State<HasilAssesmentView> {
    static late HasilAssesmentController instance;
    late HasilAssesmentView view;

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
        
    