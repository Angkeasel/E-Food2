import 'package:flutter/material.dart';

class CustomListProduct extends StatelessWidget {
  const CustomListProduct({Key? key, this.title, this.url}) : super(key: key);
  final String? url;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300,
            ),
            child: Image.asset(
              "$url",
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 15,
        ),
        Text(
          "$title",
          style: const TextStyle(
              color: Color(
                0xff005555,
              ),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
