import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_style.dart';
import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';
import 'package:quiz_minds/features/home/data/category_model.dart';

class CategoryCustomWidget extends StatelessWidget {
  const CategoryCustomWidget({super.key, required this.getCategoryModel});

  final CategoryModel getCategoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blueAccent[100],
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl: getCategoryModel.imageUrl ?? '',
                imageBuilder: (context, imageProvider) => Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                placeholder: (context, url) => Center(
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: circleIndeactorCustom(context, Colors.redAccent),
                  ),
                ),
                errorWidget: (context, url, error) =>
                    Icon(Icons.error, size: 60, color: Colors.grey[700]),
              ),
            ),
            SizedBox(height: 10),
            Text(
              getCategoryModel.categoryName ?? '',
              style: AppTextStyles.subheading.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}