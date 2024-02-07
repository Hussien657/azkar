import 'package:azkar/model/azkar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../azkar_cubit/azkar_cubit.dart';
import '../components/azkar_widget.dart';
import '../model/azkar_model.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'مواقيت الصلاة',
        ),
      ),
      body: BlocConsumer<AzkarCubit, AzkarState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AzkarCubit.get(context);
          if (cubit.AzkarModel?.data == null) cubit.getData();
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AzkarWidget(null, 'الفجر ', () {},
                      '${cubit.AzkarModel?.data.timings.fajr}'),
                  AzkarWidget(null, 'الظهر ', () {},
                      '${cubit.AzkarModel?.data.timings.dhuhr}'),
                  AzkarWidget(null, 'العصر  ', () {},
                      '${cubit.AzkarModel?.data.timings.asr}'),
                  AzkarWidget(null, 'المغرب ', () {},
                      '${cubit.AzkarModel?.data.timings.maghrib}'),
                  AzkarWidget(null, 'العشاء ', () {},
                      '${cubit.AzkarModel?.data.timings.isha}'),

                  // Text('${cubit.AzkarModel?.data.timings.fajr}')
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
