// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../carts/page/cart.dart' as _i3;
import '../homepage.dart' as _i2;
import '../navigationbar.dart' as _i1;
import '../Orders/page/order.dart' as _i4;
import '../Profile/page/profile.dart' as _i6;
import '../Wallet/page/wallet_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    NavigationBar.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationBar());
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    CartRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Cartscreen());
    },
    OrderRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderScreen());
    },
    WalletRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WalletScreen());
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfileScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(NavigationBar.name, path: '/', children: [
          _i7.RouteConfig(HomeRouter.name,
              path: 'home-page', parent: NavigationBar.name),
          _i7.RouteConfig(CartRouter.name,
              path: 'Cartscreen', parent: NavigationBar.name),
          _i7.RouteConfig(OrderRouter.name,
              path: 'order-screen', parent: NavigationBar.name),
          _i7.RouteConfig(WalletRouter.name,
              path: 'wallet-screen', parent: NavigationBar.name),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile-screen', parent: NavigationBar.name)
        ])
      ];
}

/// generated route for
/// [_i1.NavigationBar]
class NavigationBar extends _i7.PageRouteInfo<void> {
  const NavigationBar({List<_i7.PageRouteInfo>? children})
      : super(NavigationBar.name, path: '/', initialChildren: children);

  static const String name = 'NavigationBar';
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.Cartscreen]
class CartRouter extends _i7.PageRouteInfo<void> {
  const CartRouter() : super(CartRouter.name, path: 'Cartscreen');

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i4.OrderScreen]
class OrderRouter extends _i7.PageRouteInfo<void> {
  const OrderRouter() : super(OrderRouter.name, path: 'order-screen');

  static const String name = 'OrderRouter';
}

/// generated route for
/// [_i5.WalletScreen]
class WalletRouter extends _i7.PageRouteInfo<void> {
  const WalletRouter() : super(WalletRouter.name, path: 'wallet-screen');

  static const String name = 'WalletRouter';
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile-screen');

  static const String name = 'ProfileRouter';
}
