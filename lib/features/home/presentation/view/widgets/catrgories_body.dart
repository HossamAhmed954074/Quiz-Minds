import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';
import 'package:quiz_minds/features/home/data/category_model.dart';
import 'package:quiz_minds/features/home/presentation/view/widgets/category_custom.dart';
import 'package:quiz_minds/features/home/presentation/view/widgets/header_of_category_screen.dart';
import 'package:quiz_minds/features/home/presentation/view_model/cubit/categories_cubit.dart';

class CategoriesBody extends StatelessWidget {
   CategoriesBody({super.key});

 final List<Color> colors = [
    Colors.blueAccent[100]!,
    Colors.greenAccent[100]!,
    Colors.redAccent[100]!,
    Colors.orangeAccent[100]!,
    Colors.purpleAccent[100]!,
    Colors.yellowAccent[100]!,
  ];
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [];
    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CategoriesError) {
          return Center(child: Text(state.error));
        }
        if (state is CategoriesLoaded) {
          categories = state.categories;
          return Column(
            children: [
              // Header Section
              HeaderOfCategoryScreen(),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCustomWidget(
                      color: colors[index % colors.length],
                      getCategoryModel: categories[index],
                    );
                  },
                ),
              ),
            ],
          );
        }

        return Center(child: circleIndeactorCustom(context));
      },
    );
  }
}
