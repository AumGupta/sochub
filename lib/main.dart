import 'package:flutter/material.dart';
import 'package:sochub/pages/home.dart';
import 'package:sochub/pages/loading.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    useMaterial3: true,
  ),
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const SocHub(),
  },
));
