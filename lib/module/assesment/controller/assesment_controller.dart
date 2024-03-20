
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/assesment_view.dart';

class AssesmentController extends State<AssesmentView> {
    static late AssesmentController instance;
    late AssesmentView view;

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
        
    