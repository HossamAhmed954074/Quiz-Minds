part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}
final class CategoriesLoading extends CategoriesState {}
final class CategoriesLoaded extends CategoriesState{
  final List<CategoryModel> categories;

  CategoriesLoaded(this.categories);
}
final class CategoriesError extends CategoriesState{
  final String error;

  CategoriesError(this.error);
}

