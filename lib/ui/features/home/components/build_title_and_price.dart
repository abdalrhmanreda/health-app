import 'package:flutter/material.dart';

import '../../../../config/colors/app_colors.dart';

Row buildTitleAndPrice(
    {required BuildContext context,
    required String name,
    required String price}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 20,
              ),
        ),
      ),
      Text(
        '$price EG',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 20,
              color: const Color(AppColors.kPrimaryColor),
            ),
      ),
    ],
  );
}
