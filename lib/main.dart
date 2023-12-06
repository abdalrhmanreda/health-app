import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_app/config/routes/routes_path.dart';
import 'package:healthy_app/ui/cubit/app_cubit.dart';
import 'package:healthy_app/ui/cubit/observer/blocObserver.dart';
import 'package:healthy_app/ui/features/authentication/controller/auth_cubit.dart';
import 'package:hive_flutter/adapters.dart';

import 'config/routes/router.dart';
import 'config/themes/themes.dart';
import 'core/cache/hive_cache.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  await HiveCache.openHive();
  bool isStart = HiveCache.getData(key: 'start');
  String initScreen = '';
  isStart ? initScreen = RoutePath.login : initScreen = RoutePath.splash;

  runApp(HealthyApp(
    initScreen: initScreen,
  ));
}

class HealthyApp extends StatelessWidget {
  const HealthyApp({super.key, required this.initScreen});
  final String initScreen;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AuthCubit()),
            BlocProvider(create: (context) => AppCubit()..getAllCategory()),
          ],
          child: SafeArea(
            child: MaterialApp(
              initialRoute: RoutePath.layout,
              onGenerateRoute: generateRoute,
              locale: const Locale('ar', 'US'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: Style.lightTheme,
              darkTheme: Style.darkTheme,
              themeMode: ThemeMode.light,
            ),
          ),
        );
      },
    );
  }
}
