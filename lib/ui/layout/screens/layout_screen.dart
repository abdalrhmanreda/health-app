import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:healthy_app/ui/cubit/app_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(AppCubit.get(context)
                .titles(context)[AppCubit.get(context).currentIndex]),
            actions: const [Icon(IconlyBroken.search)],
          ),
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: AppCubit.get(context).items,
            onTap: (index) {
              AppCubit.get(context).changeNavBar(index);
            },
            currentIndex: AppCubit.get(context).currentIndex,
          ),
        );
      },
    );
  }
}
