import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/producer_details_screen.dart';

import '../models/producer_model.dart';

class ProducerDetailsArgs {
  final Producer producer;

  ProducerDetailsArgs({this.producer});

  static ProducerDetailsArgs fromJson(Map<String, dynamic> json) {
    return ProducerDetailsArgs(
      producer: json['producer'],
    );
  }
}

class ProducerDetailsRoute
    extends NuRoute<NuRouter, ProducerDetailsArgs, String> {
  @override
  Widget build(
      BuildContext context, NuRouteSettings<ProducerDetailsArgs> settings) {
    return ProducerDetailsScreen(
      onPackageDetailsClick: (parameters) =>
          nuvigator.open('package-details', parameters: parameters),
      producer: settings.args.producer,
    );
  }

  @override
  ParamsParser<ProducerDetailsArgs> get paramsParser =>
      ProducerDetailsArgs.fromJson;

  @override
  String get path => 'producer-details';

  @override
  ScreenType get screenType => materialScreenType;
}
