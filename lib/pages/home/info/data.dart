class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigateUrl;
  const InfoItem(
      {required this.title,
      required this.imageUrl,
      required this.source,
      required this.time,
      required this.navigateUrl});
}

const List<InfoItem> infoData = [
  InfoItem(
      title: 'A Brief History of Time',
      imageUrl:
          'http://novel.tingroom.com/file/upload/201707/18/10-47-28-19-1.jpg',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The Adventures of Dora Bell, Detective',
      imageUrl:
          'https://novel.tingroom.com/template/default/tingnovel/images/defaultpic.gif',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
  InfoItem(
      title: "Sandman's rainy day stories",
      imageUrl:
          'https://novel.tingroom.com/file/upload/202305/10/08-50-05-90-1.jpg',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The doom trail',
      imageUrl:
          'https://novel.tingroom.com/file/upload/202305/02/10-13-08-72-1.jpg',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The family at Misrule',
      imageUrl:
          'https://novel.tingroom.com/file/upload/202304/26/08-50-48-84-1.jpg',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The Schoolmaster and Other Stories',
      imageUrl:
          'https://novel.tingroom.com/file/upload/202303/31/13-35-44-46-1.jpg',
      source: "Novel English",
      time: " Two days ago",
      navigateUrl: 'login'),
];
