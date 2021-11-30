class AvatarPeople {
  final String name;
  final String avtImage;

  AvatarPeople(this.name, this.avtImage);
}

class AvatarList {
  AvatarList._internal();

//--------------- Here ----------------------
  static List<AvatarPeople> peopleList = [
    AvatarPeople(
      'julian wan',
      'assets/images/Avatars/julian-wan.jpg',
    ),
    AvatarPeople(
      'kirill balobanov',
      'assets/images/Avatars/kirill-balobanov.jpg',
    ),
    AvatarPeople(
      'max mclaren',
      'assets/images/Avatars/leio-mclaren.jpg',
    ),
    AvatarPeople(
      'michael dam',
      'assets/images/Avatars/michael-dam.jpg',
    ),
    AvatarPeople(
      'vicky hladynets',
      'assets/images/Avatars/vicky-hladynets.jpg',
    ),
  ];
}
