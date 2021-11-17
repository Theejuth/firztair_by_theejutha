class achievementInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;

  achievementInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
  });
}

List<achievementInfo> achievement = [
  achievementInfo(
    1,
    name: "injury",
    iconImage:
        'C:\Users\Acer\Desktop\FirztAir by Theejutha\firztair_by_theejutha\assets\images\icons\5855613.png',
    description:
        "a type of injury which happens relatively quickly in which skin is torn, cut, or punctured (an open wound), or where blunt force trauma causes a contusion",
  )
];
