
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/form_assesment_view.dart';

class FormAssesmentController extends State<FormAssesmentView> {
    static late FormAssesmentController instance;
    late FormAssesmentView view;

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
        
    