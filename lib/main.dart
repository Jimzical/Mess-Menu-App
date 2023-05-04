import 'package:mess_menu/home_page.dart';
import 'package:mess_menu/profile_page.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> main() async {
  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        // defaultColor: Colors.blue  ,
        // ledColor: Colors.blue,
      ),
    ],
    debug: true,
  );
  runApp(const MyApp());
}

ThemeMode themeMode = ThemeMode.dark; // not sure what this is for


// Blue Theme
// theme: ThemeData(
//         scaffoldBackgroundColor: black,
//         cardColor:  black,
//         chipTheme: const ChipThemeData(
//           backgroundColor: Color.fromRGBO(0, 140, 255, 1),
//         ),
//         listTileTheme: const ListTileThemeData(
//           tileColor: Color.fromRGBO(31, 31, 31, 1),
//         ),
//         navigationBarTheme:  NavigationBarThemeData(
//           backgroundColor: blacksh,
//           labelTextStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
//           iconTheme: MaterialStateProperty.all(const IconThemeData(color: Colors.white)
//           ),
//         ),
//       )



// make var back for the color Color(0xff1e1e1e)
Color black = const Color(0x001e1e1e);
Color blacksh = const Color.fromARGB(0, 232, 206, 206);
Color grey = const Color(0x1f1f1f1f);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mess Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: black,
        cardColor:  black,
        chipTheme: const ChipThemeData(
          // backgroundColor: Color.fromARGB(255, 239, 72, 72),
          backgroundColor: Color.fromRGBO(206, 21, 49, 1),
        ),
        listTileTheme: const ListTileThemeData(
          tileColor: Color.fromRGBO(31, 31, 31, 1),
        ),
        navigationBarTheme:  NavigationBarThemeData(
          backgroundColor: blacksh,
          labelTextStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
          iconTheme: MaterialStateProperty.all(const IconThemeData(color: Color.fromARGB(255, 255, 0, 0))
          ),
        ),
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  // const RootPage({super.key});
  const RootPage({Key? key}) : super(key: key);


  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  int currentPage = 0;

  triggerNotification(){
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: 'Notification Title',
        body: 'Simple Notification with small icon')

      );
  }

  List<Widget> pages = const [HomePage(), ProfilePage()]; 
  // List<Widget> pages =   [const HomePage(), ElevatedButton(onPressed: triggerNotification, 
    // child: const Text("Trigger Notification") )];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248, 247, 242, 0),
        leading: IconButton(
          // icon: const Icon(Icons.menu),
          icon: const Icon(FontAwesomeIcons.bars),
          onPressed: () {},
        ),
        title: const Text("Mess Food Menu",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: pages[currentPage],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.house), label: 'Home'),
            // NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(
                icon: Icon(Icons.settings, size: 35,), label: 'Settings'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}
