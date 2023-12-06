import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:healthy_app/config/colors/app_colors.dart';
import 'package:healthy_app/core/cache/hive_cache.dart';
import 'package:healthy_app/generated/assets.dart';

import '../../../config/routes/routes_path.dart';
import '../../../core/components/custom_button.dart';
import '../../../core/components/custom_navigatation.dart';
import '../../../generated/l10n.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
          vertical: MediaQuery.of(context).size.height / 20,
        ),
        child: buildGetStartedView(context),
      ),
    );
  }

  Column buildGetStartedView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          Assets.assetsGetStarted,
          height: 300.h,
        ),
        Column(
          children: [
            Text(
              S.of(context).health,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const Gap(25),
            Text(
              S.of(context).desc,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 13.sp,
                    height: 1.4,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomButton(
          text: S.of(context).getStarted,
          onPressed: () {
            HiveCache.saveData(key: 'start', value: true).then((value) {
              CustomNavigation.navigateByNamedTo(context, RoutePath.login);
            });
          },
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 20,
          color: AppColors.kPrimaryColor,
          radius: 15,
          textColor: 0xffffffff,
          horizontal: 0,
          vertical: 0,
        ),
      ],
    );
  }
}
