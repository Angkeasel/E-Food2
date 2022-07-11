import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 100,
            foregroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
            ),
          ),
        ),
        title: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Good Morning 🙌",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Unknown",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          
        ],
      ),
    );
  }
}
