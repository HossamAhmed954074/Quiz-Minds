import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_minds/core/services/data_services.dart';
import 'package:quiz_minds/core/utils/get_it.dart';
import 'package:quiz_minds/features/home/presentation/view/widgets/catrgories_body.dart';
import 'package:quiz_minds/features/home/presentation/view_model/cubit/categories_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoriesCubit(getIt<DataServices>())..getCategories(),
      child: Scaffold(body: CategoriesBody()),
    );
  }
}
