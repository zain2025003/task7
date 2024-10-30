import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class DetailesScreenCustomFeedback extends StatelessWidget {
  const DetailesScreenCustomFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading:
            Image(image: AssetImage(AppImages.detailesScreenCardBacground)));
  }
}
