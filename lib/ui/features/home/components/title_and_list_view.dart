import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:healthy_app/core/components/custom_navigatation.dart';
import 'package:healthy_app/core/constant/app_constant.dart';
import 'package:healthy_app/ui/features/home/models/product_model.dart';
import 'package:healthy_app/ui/features/home/screens/product_details.dart';

class TitleAndListView extends StatelessWidget {
  const TitleAndListView({
    super.key,
    required this.title,
    required this.list,
  });
  final String title;
  final List list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15.sp),
        ),
        const Gap(10),
        SizedBox(
          height: AppConstant.deviceHeight(context) / 3.6,
          width: AppConstant.deviceWidth(context),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                CustomNavigation.navigateTo(
                    context,
                    ProductDetailsScreen(
                        productModel: ProductModel(
                      name: list[index].name,
                      desc: list[index].desc,
                      image: list[index].image,
                      price: list[index].price,
                    )));
              },
              child: SizedBox(
                width: AppConstant.deviceWidth(context) / 2.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: AppConstant.deviceHeight(context) / 4.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(list[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      list[index].name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const Gap(15),
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}
