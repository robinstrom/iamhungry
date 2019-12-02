class RecipeBasic {
  int id;
  String title;
  String image;
  int usedIngredientCount;
  int missedIngredientCount;
  int likes;

  RecipeBasic({this.id, this.title, this.image, this.usedIngredientCount, this.missedIngredientCount, this.likes});

  factory RecipeBasic.fromJson(Map<String, dynamic> json) {
    return RecipeBasic(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      usedIngredientCount: json['usedIngredientCount'],
      missedIngredientCount: json['missedIngredientCount'],
      likes: json['likes']
    );
  }
}
