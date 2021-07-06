class RecipeModel {
  String? label;
  String? image;
  String? sourse;
  String? url;

  RecipeModel({this.label, this.image, this.sourse, this.url});

  factory RecipeModel.fromMap(Map<String, dynamic> parsedJson) {
    return RecipeModel(
      url: parsedJson["url"],
      label: parsedJson["label"],
      image: parsedJson["image"],
      sourse: parsedJson["sourse"]
    );
  }
}
