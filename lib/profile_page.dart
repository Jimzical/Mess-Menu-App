import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          // create a title for the list item
          title: Text('Im sure ill make this later ${index + 1}%' , style: TextStyle(color: Colors.white),),
          leading: const Icon(Icons.person,color: Color.fromRGBO(164, 0, 0, 1)),
          trailing:  const Icon(Icons.select_all,color: Color.fromRGBO(164, 0, 0, 1)),
          onTap: () {
            debugPrint('Item ${index + 1}');
          },
        );
      },
    );
  }
}
