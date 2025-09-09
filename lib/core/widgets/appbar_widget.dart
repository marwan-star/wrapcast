import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wrapcast/core/constants/assets.dart';
import 'package:wrapcast/core/theme/color_pallete.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //leading: CircleAvatar(child: SvgPicture.asset(TAppAssets.userPFP)),
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Wrap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextSpan(
              text: 'cast',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: ColorPallete.aHighlightColor,
              ),
            ),
          ],
        ),
      ),

      centerTitle: true,
      actions: [
        Row(
          children: [
            Container(
              width: 30,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              child: SvgPicture.asset(TAppAssets.vector),
            ),
            Container(
              width: 30,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              child: SvgPicture.asset(TAppAssets.profile),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
