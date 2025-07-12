class CategoryModel {
  final String? categoryName;
  final String? imageUrl;



  CategoryModel({required this.categoryName, required this.imageUrl});

  factory CategoryModel.fromFireStore(Map<String, dynamic> data,[String? docId]) {
    return CategoryModel(
      categoryName: docId ??'',
      imageUrl: data['imageUrl']?? '',
    );
  }



}