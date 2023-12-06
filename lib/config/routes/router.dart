import 'package:flutter/material.dart';
import 'package:healthy_app/config/routes/routes_path.dart';
import 'package:healthy_app/ui/intro/screens/splash_screen.dart';
import 'package:healthy_app/ui/layout/screens/layout_screen.dart';

import '../../ui/features/authentication/screens/login_screen/login_screen.dart';
import '../../ui/features/authentication/screens/register_screen/register_screen.dart';
import '../../ui/features/cart/screens/cart_screen.dart';
import '../../ui/features/category/screens/category_screen.dart';
import '../../ui/features/favourite/screens/favourite_screen.dart';
import '../../ui/features/home/screens/home_screen.dart';
import '../../ui/features/search/screens/search_screen.dart';
import '../../ui/features/settings/screens/settings_screen.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.splash:
      return MaterialPageRoute(builder: (_) => const GetStartedScreen());
    case RoutePath.layout:
      return MaterialPageRoute(builder: (_) => const LayoutScreen());
    case RoutePath.login:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RoutePath.register:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());

    case RoutePath.home:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case RoutePath.favourite:
      return MaterialPageRoute(builder: (_) => const FavouriteScreen());
    case RoutePath.cart:
      return MaterialPageRoute(builder: (_) => const CartScreen());
    case RoutePath.settings:
      return MaterialPageRoute(builder: (_) => const SettingsScreen());
    case RoutePath.search:
      return MaterialPageRoute(builder: (_) => const SearchScreen());

    case RoutePath.category:
      return MaterialPageRoute(builder: (_) => const CategoryScreen());
  }
}
