class achievementInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  achievementInfo(this.position,
      {this.name, this.iconImage, this.description, this.images});
}

List<achievementInfo> achievement = [
  achievementInfo(1,
      name: "injury",
      iconImage:
          'C:\Users\Acer\Desktop\FirztAir by Theejutha\firztair_by_theejutha\assets\images\icons\5855613.png',
      description:
          "a type of injury which happens relatively quickly in which skin is torn, cut, or punctured (an open wound), or where blunt force trauma causes a contusion",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ])
];
