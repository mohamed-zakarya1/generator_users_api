class GenerateUsersModels {
  List data;
  GenerateUsersModels({required this.data});
  factory GenerateUsersModels.fromJson(Map<String, dynamic> json) {
    List fullData;
    fullData = json["results"].map(
            (user) {
          return {
            "name": user["name"]["first"] + " " + user["name"]["last"],
            "email": user["email"],
            "image": user["picture"]["thumbnail"],
            "phone": user["phone"],
            "city" : user["location"]["city"],
            "country" : user["location"]["country"],
            "gender" : user["gender"],
          };
        }
    ).toList();
    return GenerateUsersModels(data: fullData);
  }
}
