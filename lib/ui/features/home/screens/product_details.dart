// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
//
//
// import '../../../../core/components/custom_sliver_bar.dart';
// import '../components/build_title_and_price.dart';
//
// class SneakerDetailsScreen extends StatefulWidget {
//   const SneakerDetailsScreen({super.key, required this.productModel});
//   //final ProductModel productModel;
//
//   @override
//   State<SneakerDetailsScreen> createState() => _SneakerDetailsScreenState();
// }
//
// class _SneakerDetailsScreenState extends State<SneakerDetailsScreen> {
//   int tag = 1;
//   int count = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         physics: const BouncingScrollPhysics(),
//         slivers: [
//           CustomSliverAppBar(
//             image: widget.productModel.image!,
//             height: AppConstant.deviceHeight(context) / 2.5,
//           ),
//           CustomSliverToBoxAdapter(
//             widget: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   buildTitleAndPrice(
//                       context: context,
//                       brand: '${widget.productModel.brand!.name}',
//                       price: '${widget.productModel.initialPrice}'),
//                   Text(
//                     '${widget.productModel.name}',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           fontSize: 18,
//                         ),
//                   ),
//                   const Gap(10),
//                   Text(
//                     '- Available Sizes',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           fontSize: 18,
//                           color: const Color(AppColors.kPrimaryColor),
//                         ),
//                   ),
//                   ChipsChoice<int>.single(
//                     value: tag,
//                     onChanged: (val) => setState(() => tag = val),
//                     choiceItems: C2Choice.listFrom<int, String>(
//                       source: widget.productModel.sizes!,
//                       value: (i, v) => i,
//                       label: (i, v) => v,
//                     ),
//                   ),
//                   buildTotalPriceRow(context),
//                   const Gap(150),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           if (count == 0 || count == 1) {
//                             setState(() {
//                               count = 1;
//                             });
//                           } else {
//                             setState(() {
//                               count--;
//                             });
//                           }
//                         },
//                         child: const Icon(
//                           Icons.remove,
//                           size: 28,
//                         ),
//                       ),
//                       CustomButton(
//                         onPressed: () {},
//                         text: 'Add to Cart',
//                         height: 50,
//                         width: AppConstant.deviceWidth(context) / 1.5,
//                         radius: 20,
//                         color: AppColors.kPrimaryColor,
//                         textColor: AppColors.kWhiteColor,
//                         vertical: 1,
//                         horizontal: 5,
//                         fontSize: 20,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           setState(() {
//                             count++;
//                           });
//                         },
//                         child: const Icon(
//                           Icons.add,
//                           size: 28,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Row buildTotalPriceRow(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'total price ($count)',
//           style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                 fontSize: 25,
//               ),
//         ),
//         Text(
//           '${count * widget.productModel.initialPrice!} \$',
//           style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                 fontSize: 22,
//                 color: const Color(AppColors.kPrimaryColor),
//               ),
//         ),
//       ],
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:healthy_app/ui/features/home/models/product_model.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/constant/app_constant.dart';
import '../components/build_title_and_price.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConstant.deviceHeight(context),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: widget.productModel.image!,
              height: AppConstant.deviceHeight(context) / 2.5,
              width: AppConstant.deviceWidth(context),
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTitleAndPrice(
                      context: context,
                      name: '${widget.productModel.name}',
                      price: '${widget.productModel.price}'),
                  const Gap(20),
                  Text(
                    '${widget.productModel.desc}',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                  ),
                  const Gap(100),
                  buildTotalPriceRow(context),
                  const Gap(30),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: const Icon(IconlyBroken.paperPlus)),
                      CustomButton(
                        onPressed: () {},
                        text: 'اضافة الي العربة',
                        height: 50,
                        width: AppConstant.deviceWidth(context) / 1.5,
                        radius: 20,
                        color: AppColors.kPrimaryColor,
                        textColor: AppColors.kWhiteColor,
                        vertical: 1,
                        horizontal: 5,
                        fontSize: 17,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (count == 1) {
                                count = 1;
                              } else {
                                count--;
                              }
                            });
                          },
                          icon: const Icon(IconlyBroken.paperNegative)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildTotalPriceRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'السعر الكلي ($count)',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 20,
              ),
        ),
        Text(
          '${count * widget.productModel.price!} EG',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 20,
                color: const Color(AppColors.kPrimaryColor),
              ),
        ),
      ],
    );
  }
}
