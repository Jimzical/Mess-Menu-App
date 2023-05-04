import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          // use the function to create 5 ListTiles
          mainAxisAlignment: MainAxisAlignment.center,
          children: createListTiles(),
        ),
      ),
    ));
  }
}

List<Widget> createListTiles() {
  Map<String, dynamic> food = {
    'Week 1': {
      'Monday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Tuesday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Wednesday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Thursday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Friday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Saturday': {
        'Breakfast': 'not idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Sunday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      }
    },
    'Week 2': {
      'Monday': {
        'Breakfast': 'Dosa, Sambar, Chutney, Toast and Jam, Tea/Coffee/Milk',
        'Lunch':
            'Chapathi, Curry Leaf Rice, Green Peas Masala, Beetroot Poriyal, White Rice, Radish Sambar, Rasam, Vegitable Curry, Pickle, Papad',
        'Snacks': 'Onion Pakoda, Tea/Coffee',
        'Dinner':
            'Chapaati, Mango Rice, Veg Sarva, White Rice, Rasam, Pickle, Papad, Curd',
      },
      'Tuesday': {
        'Breakfast':
            'Pongal, Kara Vada, Chutney, Sambar, Toast and Jam, Tea/Coffee/Milk',
        'Lunch':
            'Poori (2), Ladiesfinger Curry, Corn & Mushroom Fried Rice, Crispy Fried Vegetable, White Rice, Kara Kulabu, Rasam, Vegetable Chutney, Papad Roti, Pickle',
        'Snacks': 'Veg Manchunan, Tea/Coffee',
        'Dinner':
            'Chapathi, Veg Curry, Kuska, White Rice, Rasam, Raitha, Papad Roti, Pickle',
      },
      'Wednesday': {
        'Breakfast':
            'Idli, Sambar, Chutney, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Chapathi, Lemon Rice, Vegetable Thick Curry, (Kuttu), Cabbage Poriyal, White Rice, Rasam, Buttermilk, Papad Roti, Pickle',
        'Snacks': 'Vada Pav, Tea/Coffee',
        'Dinner': 'Vakula Dinner',
      },
      'Thursday': {
        'Breakfast':
            'Kesari Bath, Kara Bath, Chutney, Toast & Jam (Two Slice), Tea/C0ffee Milk',
        'Lunch':
            'Chapathi, Mango Rice, Corn & Vegetable Gravy, Cabbage Poriyal, White Rice, Mix Spinach Sambar, Rasam, Vegetable Chutney, Papad Roti, Pickle',
        'Snacks': 'Samosa, Tea/Coffee',
        'Dinner':
            'Chapathi, Corn & Veg Masala, Ghee Rice, White Rice, adish Sambar, Buttermilk, Papad Roti, Pickie',
      },
      'Friday': {
        'Breakfast': 'Uttappam, Sambar, Chutney, toast Uwo Sice)',
        'Lunch':
            'Chapathi, Curd Rice, Tomato Curry, Gobi 65, White Rice, Mango Sambar, Rasam, Vegetable Chutney, Papad Roti, Pickle',
        'Snacks': 'Potato Bhaji, Tea/Coffee',
        'Dinner':
            'Yorato, Egg Curry, Carror Rice, White Rice, Sambar, Rasarn, Papad Roti, Pickle',
      },
      'Saturday': {
        'Breakfast':
            'Poori, Potato Curry, Toast & lam (Two Slice), Tea/Coffee/Milk',
        'Lunch':
            'Chapathi, Mix Vegetable Semi Gravy, Vangi Bath, White Rice, Spinach Sambar, Raitha, Papad Roti, Pickle',
        'Snacks': 'Veg Puff, Tea/Coffee',
        'Dinner':
            'idli, Spicy Curry, Pullisadam, Guthi Vankai, White Rice, Rasam, Papad Roti, Pickle',
      },
      'Sunday': {
        'Breakfast':
            'Semiya Bath, Vada, Chutney, Toast Jam (Two Slice), Tea/Coffee/Milk',
        'Lunch':
            'Chapathi, Kabul Channa Masala, Jeera Rice, White Rice, Sambar, Rasam, Papad Roti, Pickle',
        'Snacks': 'Cookies, Tea/Coffee',
        'Dinner':
            'Chapathi, Chicken Dum Biryani, Raitha, Veg Dum Biryani, Palak Paneer, White Rice, Rasam, Banana, Papad , Pickle',
      }
    },
    'Week 3': {
      'Monday': {
        'Breakfast':
            'Dosa, Potato Masala, Sambar, Chutney, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Chapathi, Ghee Rice, Mix Veg Curry, Ladiesfinger Poriyal, White Rice, Beans Sambar, Rasam, Vegetable Chutney, Papad ',
        'Snacks': 'Ragi Bonda, Tea Coffee',
        'Dinner':
            'Chapathi, Soya Biryani, Veg & Corn Masala, White Rice, Drumstick Sambar, Rasam, Raitha, Papad , Pickle',
      },
      'Tuesday': {
        'Breakfast':
            'Chow Chow Bath, Chutney, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Chapathi, Gobi & Peas Masala, Tomato Rice, Chowchow Poriyal, White Rice, Mix Spinach Sambar, Rasam, Vegetable Chutney, Papad , Pickle',
        'Snacks': 'Masala Puri, Tea Coffee',
        'Dinner':
            'Chapathi, Veg Kuttu, Veg Noodles, Chicken 65, Paneer 65, White Rice, Rasam, Papad , Pickle',
      },
      'Wednesday': {
        'Breakfast':
            'Idli, Vada, Sambar, Chutney, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Poori, Mango Rice, Black Channa Masala, Gobi 65, White Rice, Bringal Sambar, Rasam, Vegetable Chutney, Papad , Pickle',
        'Snacks': 'French Fries, Tea Coffee',
        'Dinner':
            'Parota 3, Egg curry, Corn Gravy, Curry Leaf Rice, White Rice, Rasam, Masala Buttermilk, Papad, Pickle',
      },
      'Thursday': {
        'Breakfast':
            'Battura, Kabul Channa Masala, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Chapathi, Palak Rice, Tomato Saaru, Bottle Gaurd Poriyal, White Rice, More Kolumbu, Rasam, Vegetable Chutney, Papad , Pickle',
        'Snacks': 'Kaja Puri, Tea Coffee',
        'Dinner':
            'Chapathi, Chicken Curry, Paneer Curry, Vegetable Biryani, White Rice, Rasam, Raitha, Papad , Pickle',
      },
      'Friday': {
        'Breakfast':
            'Pesarattu, Coconut Chutney, Toast & Jam (Two Shce), Tea/Coffee/Milk',
        'Lunch':
            'Poori, Mushroom Fried Rice, Vegetable 6S, White Rice, White Pumpkin Sambar, Rasam, Buttermilk, Papad , Pickle',
        'Snacks': 'Mixture, Tea/Coffee',
        'Dinner':
            'Parota (3), Egg Masala, Veg & Corn Masala, Jeera Rice, White Rice, Rasam, Papad ',
      },
      'Saturday': {
        'Breakfast':
            'Bessibella Bath, Karaboondhi, Raitha, oast & Jam (Two Slice)',
        'Lunch':
            'Chapathi, Lemon Rice, Channa Masala, Spinach Paiva, White Rice, Rasam, Papad , Pickle',
        'Snacks': 'Onion Samosa, Tea Coffee',
        'Dinner':
            'Idli, Soya Bean Curry, Peas Pulao, White Rice, Mix Veg Sambar, Rasam, Papad , Pickle',
      },
      'Sunday': {
        'Breakfast':
            'Onion Uttappam, Sambar, Chutney, Toast & Jam (Two Slice), Tea Coffee Milk',
        'Lunch':
            'Chapathi, Vegetable Pulao, Vegetable Kara Kurry, White Rice, Sambar, Rasam, Papad , Pickle',
        'Snacks': 'Cookies, Tea Coffee',
        'Dinner':
            'Chapathi, Chicken Biryani Raitha, Veg Biryani, Paneer Butter Masala, White Rice, Rasam, Sweet, Papad , Pickle',
      }
    },
    'Week 4': {
      'Monday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Tuesday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Wednesday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Thursday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Friday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Saturday': {
        'Breakfast': 'not idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      },
      'Sunday': {
        'Breakfast': 'idly, dosa',
        'Lunch': 'rice, dal',
        'Snacks': 'idly, dosa',
        'Dinner': 'rice, dal',
      }
    }
  };
  // test
  // DateTime now = DateTime(2023, 4, 17 , 17, 14, 0);
  DateTime now = DateTime.now();

  DateTime orginalDate = DateTime(2023, 4, 3);
  Duration difference = now.difference(orginalDate);
  int days = (difference.inDays / 7).ceil() % 4;

  String week = 'Week $days';

  String formattedDate = DateFormat('EEEE').format(now);
  // debugPrint('---------------\nnow: $now\n day: $formattedDate\n---------------');

  Map<String, dynamic> foodDay = food[week][formattedDate];

  triggerNotification(
      String foodTime, String breakfastFood, DateTime scheduledTime) {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      } else {
        AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: scheduledTime.hour,
            channelKey: 'basic_channel',
            title: foodTime,
            body: breakfastFood,
            notificationLayout: NotificationLayout.BigText,
          ),
          schedule: NotificationCalendar(
            hour: scheduledTime.hour,
            minute: scheduledTime.minute,
            second: scheduledTime.second,
            millisecond: scheduledTime.microsecond,
            allowWhileIdle: true,
            repeats: true,
          ),
        );
      }
    });
  }

  // DateTime breakfastTime =DateTime(now.year, now.month, now.day, 19, 41, 15, 0);
  DateTime breakfastTime = DateTime(now.year, now.month, now.day, 7, 12, 10);
  DateTime lunchTime = DateTime(now.year, now.month, now.day, 12, 31, 10, 0);
  DateTime snacksTime = DateTime(now.year, now.month, now.day, 16, 12, 10, 0);
  DateTime dinnerTime = DateTime(now.year, now.month, now.day, 18, 12, 10, 0);

  triggerNotification('Breakfast', foodDay['Breakfast'], breakfastTime);
  triggerNotification('Lunch', foodDay['Lunch'], lunchTime);
  triggerNotification('Snacks', foodDay['Snacks'], snacksTime);
  triggerNotification('Dinner', foodDay['Dinner'], dinnerTime);

  debugPrint('-------------------------\n$now\n-------------------------');

// AwesomeNotifications().createNotification(
//       content: NotificationContent(
//         id: 10,
//         channelKey: 'basic_channel',
//         title: "button",
//         body: "buttonzzzdfwkjnwskj",
//         // title: foodTime,
//         // body: breakfastFood,
//         notificationLayout: NotificationLayout.BigText,
//       ),
//       schedule: NotificationCalendar(
//         hour: 18,
//         minute: 52,
//         second: 15,
//         millisecond: 0,

//         // allowWhileIdle: true,
//         repeats: true,
//       ),
//     );

  List<Widget> listTiles = [];

  listTiles.add(
    ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        // tileColor: const Color.fromARGB(255, 255, 49, 31),
        tileColor: const Color.fromARGB(255, 212, 18, 0),
        leading: const Icon(FontAwesomeIcons.utensils,
            color: Color.fromARGB(255, 116, 17, 17)),
        title: Text('Food Menu: $formattedDate',
            style: const TextStyle(color: Colors.white, fontSize: 20)),
        subtitle: Text(week,
            style: const TextStyle(color: Colors.white, fontSize: 15)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        )),
  );

  listTiles.add(const SizedBox(height: 10));

  foodDay.forEach((key, value) {
    var valueList = value.split(',');
    // ignore: prefer_typing_uninitialized_variables
    var valElement;
    listTiles.add(
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        // tileColor: const Color.fromARGB(234, 255, 153, 0),

        leading: const Icon(FontAwesomeIcons.bowlFood,
            // color: Color.fromARGB(255, 239, 72, 72)),
            color:  Color.fromRGBO(210, 9, 9, 1)),
        title: Text(key,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
        subtitle: Wrap(children: [
          for (valElement in valueList)
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Chip(
                label: Text(valElement,
                    style: const TextStyle(color: Colors.white, fontSize: 15)),
                // backgroundColor: const Color.fromARGB(234, 255, 169, 40),
              ),
            )
        ]),

        // onTap: triggerNotification,
        onTap: () {
          debugPrint('----------------------------------------');
          debugPrint("Tapped on $key : $value");
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
    listTiles.add(const SizedBox(height: 10.0));
  });

  // add a space between the ListTiles
  return listTiles;
}

// create functon to print Map elements
void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    debugPrint("Key: $key, Value: $value");
  });
}
