import 'package:flutter/material.dart';
import 'package:sochub/widgets/feed_video.dart';
import '../widgets/profile_update.dart';

class SocHub extends StatefulWidget {
  const SocHub({Key? key}) : super(key: key);

  @override
  State<SocHub> createState() => _SocHubState();
}

class _SocHubState extends State<SocHub> {
  List<List<Map<String, dynamic>>> _data = [];
  //
  // @override
  // void initState() {
  //   super.initState();
  //   // Fetch data from MongoDB when the app starts
  //   _fetchData();
  // }
  //
  // Future<void> _fetchData() async {
  //   var data = await DataService.fetchData();
  //
  //   setState(() {
  //     _data = data;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    _data = ModalRoute.of(context)?.settings.arguments as List<List<Map<String, dynamic>>>;

    return Scaffold(
      backgroundColor: const Color(0xFF2F2F2F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        scrolledUnderElevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.grey,
                size: 48,
              ),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),

      body: ListView(
          // physics: const BouncingScrollPhysics(),

          children: [

            Container(
              height: 146,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 8,),
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2affffff),
                    blurRadius: 100,
                  ),
                ],
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF222222),
                      Color(0xFF212121),
                    ],
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.all(21.0),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 21,
                ),
                scrollDirection: Axis.horizontal,
                // physics: const BouncingScrollPhysics(),
                itemCount: _data[0].length,
                itemBuilder: (_,index){
                  return Row(
                    children: [
                      ProfileUpdate(
                          text: _data[0][index]['SocietyName'],
                          image: _data[0][index]['Societylogo']
                      ),
                    ],
                  );
                  },
              ),
            ),
            Column(
              children: List.generate(_data[1].length, (index) => FeedVideo(
                  eventName: _data[1][index]['Eventname'],
                  organizerName: _data[1][index]['OrganizerName'],
                  organizerLogo: _data[1][index]['Organizerlogo'],
                  image: _data[1][index]['image'],
                  prizePool: _data[1][index]['Prize'],
                  registrationPrice: _data[1][index]['RegistrationPrice'],
              )
              ),
            )
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffCCFF00),
        unselectedItemColor: const Color(0xffCCFF00),
        enableFeedback: true,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
