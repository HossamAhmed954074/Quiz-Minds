import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_minds/core/services/data_services.dart';
import 'package:quiz_minds/features/home/data/category_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.dataServices) : super(CategoriesInitial());
  final DataServices dataServices;

  getCategories()async{
    emit(CategoriesLoading());
  try{    
    var querySnapshot = await dataServices.getCategories();
    List<CategoryModel> categories = [];
    for (var doc in querySnapshot.docs) { 
      categories.add(CategoryModel.fromFireStore(doc.data(), doc.id));
    }
    emit(CategoriesLoaded(categories));

  }catch(e){
    emit(CategoriesError(e.toString()));
  }
  }



}
