class ChatModel {
  final String name;
  final String message;
  final String time;
  final String status;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.status, this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: 'Abdul Aziz',
      message: 'Amazing Flutter Chat!',
      time: '13:58',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
  ChatModel(
      name: 'Said Emir Faisal',
      message: 'Nani!!',
      time: '14:13',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
  ChatModel(
      name: 'Rudiato Tiofan',
      message: 'Amazing dude!',
      time: '14:28',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
  ChatModel(
      name: 'Nanang Eka Cahya',
      message: 'Wooooowwww!!',
      time: '14:33',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
  ChatModel(
      name: 'Jajang Ruhiyat',
      message: 'WTF!',
      time: '14:54',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
  ChatModel(
      name: 'Framma W Akbar',
      message: 'So Good!',
      time: '15:18',
      status: 'hohoho!',
      avatarUrl: 'https://picsum.photos/id/1033/200/300'),
];
