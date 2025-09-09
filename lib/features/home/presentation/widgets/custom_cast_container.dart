import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wrapcast/core/constants/assets.dart';
import 'package:wrapcast/core/dummy_data/dummy_model.dart';
import 'package:wrapcast/core/theme/color_pallete.dart';

class CustomCastContainer extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String castedFrom;
  final String castImage;
  final int castedAt;
  final String castText;
  final CastInfo castInfo;
  const CustomCastContainer({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.castedFrom,
    required this.castImage,
    required this.castedAt,
    required this.castText,
    required this.castInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: ColorPallete.aColorPurpleDay_20,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(child: Image.asset(TAppAssets.user1)),
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '$userName ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 6,
                              ),
                              decoration: BoxDecoration(
                                color: ColorPallete.aColorText_2.withValues(
                                  alpha: 0.15,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                spacing: 2,
                                children: [
                                  CircleAvatar(
                                    radius: 6,
                                    child: Image.asset(TAppAssets.user1),
                                  ),
                                  Text(
                                    castedFrom,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: ColorPallete.aColorText_2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              ' ${castedAt.toString()}h',
                              style: TextStyle(
                                color: ColorPallete.aColorText_2,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(TAppAssets.dots),
                      ],
                    ),
                    Text(castText, style: TextStyle(fontSize: 14)),
                    castImage.isNotEmpty ? Image.asset(castImage) : SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 3,
                          children: [
                            SvgPicture.asset(TAppAssets.comment),
                            Text(castInfo.comments.toString()),
                          ],
                        ),
                        Row(
                          spacing: 3,
                          children: [
                            SvgPicture.asset(TAppAssets.recast),
                            Text(castInfo.recasts.toString()),
                          ],
                        ),
                        Row(
                          spacing: 3,
                          children: [
                            SvgPicture.asset(TAppAssets.like),
                            Text(castInfo.likes.toString()),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          spacing: 20,
                          children: [
                            SvgPicture.asset(TAppAssets.category),
                            SvgPicture.asset(TAppAssets.share),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}
