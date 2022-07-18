import 'package:auto_route/auto_route.dart';
import 'package:efood2/route/route.gr.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        CartRouter(),
        OrderRouter(),
        WalletRouter(),
        ProfileRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/image/Home.png",
                height: 35,
              ),
              icon: Image.asset("assets/image/Home2.png",
                  height: 35, color: Colors.grey.shade300),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/cart2.png",
                height: 40,
                color: Colors.grey.shade300,
              ),
              activeIcon: Image.asset(
                "assets/image/Cart.png",
                height: 40,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/Buy2.png",
                height: 40,
                color: Colors.grey.shade300,
              ),
              activeIcon: Image.asset(
                "assets/image/Buy.png",
                height: 35,
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/image/Wallet2.png",
                  height: 35, color: Colors.grey.shade300),
              activeIcon: Image.asset(
                "assets/image/Wallet.png",
                height: 35,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/image/Profile2.png",
                color: Colors.grey.shade300,
                height: 35,
              ),
              activeIcon: Image.asset(
                "assets/image/Profile.png",
                height: 35,
              ),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
