import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sochub/widgets/app_text.dart';
import '../services/data_services.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    // Fetch data from MongoDB when the app starts
    _fetchData();
  }

  Future<void> _fetchData() async {
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/home', arguments: await DataService.fetchData());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF222222),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SpinKitRipple(
              color: Color(0xffCCFF00),
              size: 200.0,
              borderWidth: 30,
              // duration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    );
  }
}
