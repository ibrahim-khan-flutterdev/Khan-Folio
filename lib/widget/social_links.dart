import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configs/app_dimensions.dart';
import '../configs/app_theme.dart';
import '../configs/space.dart';
import '../constants.dart';
import '../provider/app_provider.dart';
import '../responsive/responsive.dart';
import '../utils/utils.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding:
                  Responsive.isMobile(context) ? Space.all(0.2, 0) : Space.all(0.2, 0),
              child: IconButton(
                highlightColor: Colors.white54,
                splashRadius: AppDimensions.normalize(12),
                icon: Image.network(
                  e.value,

                  color: appProvider.isDark ? Colors.white : Colors.black,
                  height:AppDimensions.normalize(10),
                ),
                iconSize:AppDimensions.normalize(10),
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: AppTheme.c!.primary!,
              ),
            ),
          )
          .toList(),
    );
  }
}
