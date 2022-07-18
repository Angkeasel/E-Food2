import 'package:auto_route/annotations.dart';
import 'package:efood2/Orders/page/order.dart';
import 'package:efood2/Profile/page/profile.dart';
import 'package:efood2/Wallet/page/wallet_screen.dart';
import 'package:efood2/carts/page/cart.dart';
import 'package:efood2/homepage/page/homepage.dart';
import 'package:efood2/navigationbar.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavigationBar,path: '/', children: [
      AutoRoute(page: HomePage, name: 'HomeRouter'),
      AutoRoute(page: Cartscreen, name: 'CartRouter'),
      AutoRoute(page: OrderScreen, name: 'OrderRouter'),
      AutoRoute(page: WalletScreen, name: 'WalletRouter'),
      AutoRoute(page: ProfileScreen, name: 'ProfileRouter'),
    ]),
  ],
)
class $AppRouter {}
