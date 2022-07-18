import 'package:efood2/homepage/controller/home_controller.dart';
import 'package:efood2/widget/custom_list_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
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
              children: [
                Text(
                  "${greeting()}",
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const Text(
                  "Unknown",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset("assets/svg/RingRing.svg")),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset("assets/svg/Favorite.svg")),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Special Offers",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/image/Rectangle 515 (4).png"),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 100),
                  itemCount: homeController.homeList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return CustomListProduct(
                      url: homeController.homeList[index].url,
                      title: homeController.homeList[index].title,
                    );
                  }),
            ],
          ),
        ));
  }

  greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning 🙌';
    }
    if (hour < 17) {
      return 'Good Afternoon 🙌';
    }
    return 'Good Evening 🙌';
  }
}
