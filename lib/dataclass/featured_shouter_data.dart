class FeaturedShouterData {
  FeaturedShouterData({
    required this.bgImage,
    required this.topimageIcon,
    required this.title,
    required this.shortDes,
    required this.featuredtitle,
    required this.bottomMessage,
  });

  final String bgImage;
  final String topimageIcon;
  final String title;
  final String shortDes;
  final String featuredtitle;
  final String bottomMessage;

  factory FeaturedShouterData.fromJson(Map<String, dynamic> json) =>
      FeaturedShouterData(
        bgImage: json["bgImage"],
        topimageIcon: json["topimageIcon"],
        title: json["title"],
        shortDes: json["shortDes"],
        featuredtitle: json["featuredtitle"],
        bottomMessage: json["bottomMessage"],
      );

  Map<String, dynamic> toJson() => {
        "bgImage": bgImage,
        "topimageIcon": topimageIcon,
        "title": title,
        "shortDes": shortDes,
        "featuredtitle": featuredtitle,
        "bottomMessage": bottomMessage,
      };
}

var featuredShouterList = [
  FeaturedShouterData(
    bgImage: 'images/bgslide1.png',
    topimageIcon: 'images/bgslide1.png',
    title: 'Island Boys',
    shortDes: 'Check out their profile and send them custom offers!',
    featuredtitle: 'Featured Influencer',
    bottomMessage: 'Message them to collaborate!',
  ),
  FeaturedShouterData(
    bgImage: 'images/bgslide2.png',
    topimageIcon: 'images/bgslide5.png',
    title: 'Sommer Ray',
    shortDes: 'Check out their profile and send them custom offers!',
    featuredtitle: 'Featured Influencer',
    bottomMessage: 'Message them to collaborate!',
  ),
  FeaturedShouterData(
    bgImage: 'images/bgslide3.png',
    topimageIcon: 'images/bgslide5.png',
    title: 'Snoop Dogg',
    shortDes: 'Check out their profile and send them custom offers!',
    featuredtitle: 'Featured Influencer',
    bottomMessage: 'Message them to collaborate!',
  ),
  FeaturedShouterData(
    bgImage: 'images/bgslide4.png',
    topimageIcon: 'images/bgslide5.png',
    title: 'Charlie Dimilio',
    shortDes: 'Check out their profile and send them custom offers!',
    featuredtitle: 'Featured Influencer',
    bottomMessage: 'Message them to collaborate!',
  ),
];
