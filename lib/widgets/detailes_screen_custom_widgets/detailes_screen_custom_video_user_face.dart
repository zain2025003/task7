import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class DetailesScreenCustomVideoUserFace extends StatelessWidget {
  const DetailesScreenCustomVideoUserFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // صورة الخلفية
        Container(
          margin: EdgeInsets.only(
            top: AppSizes.detailesNavigationButtonTopPadding,
            left: AppSizes.detailesScreenVedioUserInterFaceLeftPadding,
            right: AppSizes.detailesScreenUserInterFaceRightPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSizes.detailesScreenUserInterFaceRadius,
            ),
          ),
          child: Image(
            image: AssetImage(AppImages.detailesScreenVideoInterFaceBackground),
          ),
        ),

        // تأثير BlendMode دائري مع Rotation حول الأيقونة
        Transform.rotate(
          angle: 0.1, // زاوية التدوير المطلوبة
          child: ClipOval(
            child: BackdropFilter(
              filter:
                  ImageFilter.blur(sigmaX: 1, sigmaY: 1), // تأثير تمويه خفيف
              child: Container(
                width: Responsive.responsiveWidth * 54.13,
                height: Responsive.responsiveWidth * 54.13,
                color: Colors.white60.withOpacity(0.01), // شفافية حول الصورة
                child: Image.asset(
                  'assets/images/playVideoCover.png',
                  color: Colors.white.withOpacity(0.5),
                  colorBlendMode: BlendMode.overlay,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        // الأيقونة الأصلية للتشغيل بدون تأثير
      ],
    );
  }
}
