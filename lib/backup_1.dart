// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:awesome_notifications/awesome_notifications.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Card(
//       margin: const EdgeInsets.all(10.0),
//       child: SingleChildScrollView(
//         child: Column(
//           // use the function to create 5 ListTiles
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: createListTiles(),
//         ),
//       ),
//     ));
//   }
// }

// List<Widget> createListTiles() {
//   Map<String, dynamic> food = {
//     'Week 1': {
//       'Monday': {
//         'Breakfast': 'monday idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Tuesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Wednesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Thursday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Friday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Saturday': {
//         'Breakfast': 'not idly,dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Sunday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       }
//     },
//     'Week 2': {
//       'Monday': {
//         'Breakfast': 'Dosa, Sambar, Chutney, Toast and Jam, Tea/Coffee/Milk',
//         'Lunch':
//             'Chapathi, Curry Leaf Rice, Green Peas Masala, Beetroot Poriyal, White Rice, Radish Sambar, Rasam, Vegitable Curry, Pickle, Papad',
//         'Snacks': 'Onion Pakoda, Tea/Coffee',
//         'Dinner':
//             'Chapaati, Mango Rice, Veg Sarva,White Rice, Rasam, Pickle, Papad, Curd',
//       },
//       'Tuesday': {
//         'Breakfast':
//             'Pongal, Kara Vada, Chutney, Sambar, Toast and Jam, Tea/Coffee/Milk',
//         'Lunch':
//             'Poori (2),Ladiesfinger Curry,Corn & Mushroom Fried Rice,Crispy Fried Vegetable,White Rice,Kara Kulabu,Rasam,Vegetable Chutney,Papad/ Roti,Pickle',
//         'Snacks': 'Veg Manchunan,Tea/Coffee',
//         'Dinner':
//             'Chapathi,Veg Curry,Kuska,White Rice,Rasam,Raitha,papad/ Roti,Pickle',
//       },
//       'Wednesday': {
//         'Breakfast':
//             'Idli,Sambar,Chutney,Toast & Jam (Two Slice),Tea Coffee Milk',
//         'Lunch':
//             'Chapathi,Lemon Rice,Vegetable Thick Curry,(Kuttu),Cabbage Poriyal,White Rice,Rasam,Buttermilk,Papad/ Roti,Pickle',
//         'Snacks': 'Vada Pav,Tea/Coffee',
//         'Dinner': 'Vakula Dinner',
//       },
//       'Thursday': {
//         'Breakfast':
//             'Kesari Bath,Kara Bath,Chutney,Toast & Jam (Two Slice),Tea/C0ffee Milk',
//         'Lunch':
//             'Chapathi,Mango Rice,Corn & Vegetable Gravy,Cabbage Poriyal,White Rice,Mix Spinach Sambar,Rasam,Vegetable Chutney,Papad/ Roti,Pickle',
//         'Snacks': 'Samosa,Tea/Coffee',
//         'Dinner':
//             'Chapathi,Corn & Veg Masala,Ghee Rice,White Rice,adish Sambar,Buttermilk,Papad/ Roti,Pickie',
//       },
//       'Friday': {
//         'Breakfast': 'Uttappam,Sambar,Chutney,toast Uwo Sice)',
//         'Lunch':
//             'Chapathi,Curd Rice,Tomato Curry,Gobi 65,White Rice,Mango Sambar,Rasam,Vegetable Chutney,Papad/ Roti,Pickle',
//         'Snacks': 'Potato Bhaji,Tea/Coffee',
//         'Dinner':
//             'Yorato,Egg Curry,Carror Rice,White Rice,Sambar,Rasarn,Papad/ Roti,Pickle',
//       },
//       'Saturday': {
//         'Breakfast':
//             'Poori,Potato Curry,Toast & lam (Two Slice),Tea/Coffee/Milk',
//         'Lunch':
//             'Chapathi,Mix Vegetable Semi Gravy,Vangi Bath,White Rice,Spinach Sambar,Raitha,Papad/ Roti,Pickle',
//         'Snacks': 'Veg Puff,Tea/Coffee',
//         'Dinner':
//             'idli,Spicy Curry,Pullisadam,Guthi Vankai,White Rice,Rasam,Papad/ Boti,Pickle',
//       },
//       'Sunday': {
//         'Breakfast':
//             'Semiya Bath,Vada,Chutney,Toast Jam (Two Slice),Tea/Coffee/Milk',
//         'Lunch':
//             'Chapathi,Kabul Channa Masala,Jeera Rice,White Rice,Sambar,Rasam,Papad/ Roti,Pickle',
//         'Snacks': 'Cookies,Tea/Coffee',
//         'Dinner':
//             'Chapathi,Chicken Dum Biryani,Raitha,Veg Dum Biryani,Palak Paneer,White Rice,Rasam,Banana,Papad/ Boti,Pickle',
//       }
//     },
//     'Week 3': {
//       'Monday': {
//         'Breakfast': 'idly, dosa, and i just neeed a really really really ling text to test this out, like evern longer so that i can see how it looks like',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner':
//             'Chapathi,Chicken Dum Biryani,Raitha,Veg Dum Biryani,Palak Paneer,White Rice,Rasam,Banana,Papad/ Boti,Pickle',
//       },
//       'Tuesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Wednesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Thursday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Friday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Saturday': {
//         'Breakfast': 'not idly,dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Sunday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       }
//     },
//     'Week 4': {
//       'Monday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Tuesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Wednesday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Thursday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Friday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Saturday': {
//         'Breakfast': 'not idly,dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       },
//       'Sunday': {
//         'Breakfast': 'idly, dosa',
//         'Lunch': 'rice, dal',
//         'Snacks': 'idly, dosa',
//         'Dinner': 'rice, dal',
//       }
//     }
//   };

//   DateTime now = DateTime.now();
//   // test
//   // DateTime now = DateTime(2023, 4, 17 , 19, 0, 0);
  
//   DateTime orginalDate = DateTime(2023, 4, 3);
//   Duration difference = now.difference(orginalDate);
//   int days = (difference.inDays / 7).ceil() % 4 + 1;

//   String week = 'Week $days';

//   String formattedDate = DateFormat('EEEE').format(now);
//   debugPrint('---------------\nnow: $now\n day: $formattedDate\n---------------');

//   Map<String, dynamic> foodDay = food[week][formattedDate];

//   triggerNotification(String foodTime, String breakfastFood) {
//     AwesomeNotifications().createNotification(
//       content: NotificationContent(
//         id: 10,
//         channelKey: 'basic_channel',
//         title: foodTime,
//         body: breakfastFood,
//         notificationLayout: NotificationLayout.BigText,
//       ),
//     );
//   }

//   // DateTime breakfastTime = DateTime(now.year, now.month, now.day, 6, 30, 0);
//   DateTime breakfastTime = DateTime(now.year, now.month, now.day, 1, 30, 0);
//   DateTime lunchTime = DateTime(now.year, now.month, now.day, 12, 30, 0);
//   DateTime snacksTime = DateTime(now.year, now.month, now.day, 16, 30, 0);
//   DateTime dinnerTime = DateTime(now.year, now.month, now.day, 18, 0, 0);

//   if (now.isAfter(breakfastTime) && now.isBefore(lunchTime)) {
//     triggerNotification('Breakfast', foodDay['Breakfast']);
//   } else if (now.isAfter(lunchTime) && now.isBefore(snacksTime)) {
//     triggerNotification('Lunch', foodDay['Lunch']);
//   } else if (now.isAfter(snacksTime) && now.isBefore(dinnerTime)) {
//     triggerNotification('Snacks', foodDay['Snacks']);
//   } else if (now.isAfter(dinnerTime) ) {
//     triggerNotification('Dinner', foodDay['Dinner']);
//   }
//   // else if (now.isAfter(dinnerTime) &&
//   //     now.isBefore(breakfastTime.add(const Duration(days: 1)))) {
//   //   triggerNotification('Dinner', foodDay['Dinner']);
//   // }

//   List<Widget> listTiles = [];

//   listTiles.add(
//     const ListTile(
//       contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//       tileColor: Colors.orange,
//       leading: Icon(FontAwesomeIcons.utensils, color: Colors.white),
//       title: Text('Food Menu',
//           style: TextStyle(color: Colors.white, fontSize: 20)),
//       subtitle: Text('Food Menu for the day',
//           style: TextStyle(color: Colors.white, fontSize: 15)),
//     ),
//   );

//   listTiles.add(const SizedBox(height: 10));

//   foodDay.forEach((key, value) {
//     var valueList = value.split(',');
//     // ignore: prefer_typing_uninitialized_variables
//     var valElement;
//     listTiles.add(
//       ListTile(
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//         tileColor: const Color.fromARGB(234, 255, 153, 0),

//         leading: const Icon(FontAwesomeIcons.bowlFood, color: Colors.white),
//         title: Text(key,
//             style: const TextStyle(color: Colors.white, fontSize: 20)),
//         subtitle: Wrap(children: [
//           for (valElement in valueList)
//             Padding(
//               padding: const EdgeInsets.all(1.0),
//               child: Chip(
//                 label: Text(valElement,
//                     style: const TextStyle(color: Colors.white, fontSize: 15)),
//                 backgroundColor: const Color.fromARGB(234, 255, 169, 40),
//               ),
//             )
//         ]),

//         // onTap: triggerNotification,
//         onTap: () {
//           debugPrint('----------------------------------------');
//           debugPrint("Tapped on $key : $value");
//         },
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(15.0)),
//         ),
//       ),
//     );
//     listTiles.add(const SizedBox(height: 10.0));
//   });

//   // add a space between the ListTiles
//   return listTiles;
// }

// // create functon to print Map elements
// void printMap(Map<String, dynamic> map) {
//   map.forEach((key, value) {
//     debugPrint("Key: $key, Value: $value");
//   });
// }

