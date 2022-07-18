import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/home_model.dart';

class HomeController extends GetxController {
  List<HomeModle> homeList = [
    HomeModle(title: 'Clothes', url: 'assets/image/clothes.png'),
    HomeModle(title: 'Shoes', url: 'assets/image/shoes.png'),
    HomeModle(title: 'Bags', url: 'assets/image/Vector.png'),
    HomeModle(title: 'Electronics', url: 'assets/image/desktop 1.png'),
    HomeModle(title: 'Watch', url: 'assets/image/watch 1.png'),
    HomeModle(title: 'Jewelry', url: 'assets/image/demond.png'),
    HomeModle(title: 'Kitchen', url: 'assets/image/Union.png'),
    HomeModle(title: 'Toys', url: 'assets/image/Toy.png'),
  ];
}
