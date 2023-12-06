import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthy_app/ui/features/home/components/title_and_list_view.dart';

import '../../../../core/components/progress_indector.dart';
import '../../../cubit/app_cubit.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ConditionalBuilder(
          condition: state is! LoadingState,
          builder: (context) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleAndListView(
                      title: 'طعام مضاف اليه سكر',
                      list: AppCubit.get(context).foodWithAddedSugar,
                    ),
                    const Gap(25),
                    TitleAndListView(
                      title: 'اضافات',
                      list: AppCubit.get(context).adds,
                    ),
                  ],
                ),
              ),
            ),
          ),
          fallback: (context) => const CustomLoadingIndicator(),
        );
      },
    );
  }
}
