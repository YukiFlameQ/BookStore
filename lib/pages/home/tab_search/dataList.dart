class InfoItem {
  final String title;
  final String image;
  final String source;
  final String price;
  final String time;
  final String intro;
  final String author;
  final String navigateUrl;

  const InfoItem(
      {required this.title,
      required this.image,
      required this.source,
      required this.price,
      required this.time,
      required this.intro,
      required this.author,
      required this.navigateUrl});
}

const List<InfoItem> infoData = [
  InfoItem(
      title: 'A Brief History of Time',
      author:'Stephen William Hawking',
      image: 'static/images/6.jpg',
      source: "Novel English",
      price: "¥ 30",
      time: " Two days ago",
      intro:
          "'A Brief History of Time', published in 1988, has been a landmark volume in scientific writing and in worldwide acclaim and popularity, with more than nine million copies sold. That edition was on the cutting edge of what was then known about the nature of the universe. Since its publication, however, there have been extraordinary advances in the technology of observing both the micro- and the macrocosmic world, confirming many of Professor Hawking's predictions. Eager to bring to his original text the new knowledge revealed by these observations, Hawking has written a new introduction, updated chapters throughout, and added an entirely new chapter on Wormholes and Time Travel.",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The Adventures of Dora Bell, Detective',
      author:'Corbett, George',
      image: 'static/images/5.jpg',
      source: "Novel English",
      price: "¥ 35",
      time: " Two days ago",
      intro: "The Adventures of Dora Bell, Detective was originally serialized in twelve parts in the South Wales Echo on Saturdays, beginning January 6th, 1894. ",
      navigateUrl: 'login'),
  InfoItem(
      title: "Sandman's rainy day stories",
      author:'Walker, Abbie Phillips',
      image: 'static/images/4.jpg',
      source: "Novel English",
      price: "¥ 37",
      time: " Two days ago",
      intro: "Princess Cantilla lived in a castle like most princesses, but she was not a rich princess, for her father had lost all his lands and money by quarreling with other kings about the length and breadth of his kingdom and theirs.",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The doom trail',
      author:'Arthur D. Howden Smith',
      image: 'static/images/3.jpg',
      source: "Novel English",
      price: "¥ 28",
      time: " Two days ago",
      intro: "The Doom Trail (1921), was the first story written by Arthur D. Howden Smith regarding characters from the Ormerod family",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The family at Misrule',
      author:'Ethel Turner',
      image: 'static/images/2.jpg',
      source: "Novel English",
      price: "¥ 40",
      time: " Two days ago",
      intro: "The Family at Misrule continues the adventures (and misadventures) of the Seven Little Australians.",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The Schoolmaster and Other Stories',
      author:'Anton Chekhov',
      image: 'static/images/1.jpg',
      source: "Novel English",
      price: "¥ 30",
      time: " Two days ago",
      intro: "FYODOR LUKITCH SYSOEV, the master of the factory school maintained at the expense of the firm of Kulikin, was getting ready for the annual dinner. ",
      navigateUrl: 'login'),
  InfoItem(
      title: "The D'Arblay mystery",
      author:'R. Austin Freeman',
      image: 'static/images/7.jpg',
      source: "Novel English",
      price: "¥ 25",
      time: " Two days ago",
      intro: "While walking in Churchyard Bottom Wood, Dr Stephen Gray discovers a body. This turns out to be a Julius D'Arblay, a man which is discovered as been murdered. ",
      navigateUrl: 'login'),
  InfoItem(
      title: "Jasper's old shed",
      author:'A. M. Coker',
      image: 'static/images/8.jpg',
      source: "Novel English",
      price: "¥ 35",
      time: " Two days ago",
      intro: "JONAS JASPER, general and marine store-dealer.",
      navigateUrl: 'login'),
  InfoItem(
      title: "Love's labor won",
      author:'Emma Dorothy Eliza Nevitte Southworth',
      image: 'static/images/9.jpg',
      source: "Novel English",
      price: "¥ 20",
      time: " Two days ago",
      intro: "Such were the exclamations murmured through the room, in low but earnest tones.",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The wrong letter',
      author:'Walter S Masterman',
      image: 'static/images/10.jpg',
      source: "Novel English",
      price: "¥ 33",
      time: " Two days ago",
      intro: "The wrong letter by Walter S. Masterman, 1926",
      navigateUrl: 'login'),
  InfoItem(
      title: 'The City of the Discreet',
      author:'Paio Baroja',
      image: 'static/images/11.jpg',
      source: "Novel English",
      price: "¥45",
      time: " Two days ago",
      intro: "The book 'The city of the discreet' , has been considered important throughout the human history, and so that this work is never forgotten.",
      navigateUrl: 'login'),
];
