class PostModel {
  final String userImage;
  final String userName;
  final String title;
  final String message;
  final String postTime;
  final int? numberReactions;
  final int? numberComments;
  final String? postImage;

  PostModel(
      this.userImage, this.userName, this.title, this.message, this.postTime,
      {this.numberReactions, this.numberComments, this.postImage});
}

List<PostModel> posts = [
  PostModel(
      'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.6435-9/122325699_3679272788830956_8339565162090124030_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=MTo6WrtL5q8AX8hY2Aj&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT_tFP6rhk116RzLeQ3u1WpLX2LHV6KQpnxiV1gvwbWaIQ&oe=61E3E352',
      'Luiz Gustavo',
      'Suporte técnico da Systech Soluções',
      'Acreditamos no valor dos relacionamentos duradouros, construídos com base no respeito e na confiança mútua. Por essa razão, agradecemos a confiança em nossa equipe! Feliz natal',
      '1 h',
      numberReactions: 5,
      numberComments: 2),
  PostModel(
      'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.18169-9/12189834_774272139366689_4132217638958820621_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=AcxZ0QoOEIUAX_Z92Zx&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT9K6UBPKJHas4RgDJMmqcpB7MMqP8RYEJSavTfh7K5iQQ&oe=61E37108',
      'Gean Duarte',
      'Dev Flutter',
      'Vamos codar!!!',
      '23 h',
      numberReactions: 10,
      numberComments: 8,
      postImage:
          'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg'),
  PostModel(
      'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.18169-9/17308697_1279647858794775_7359336949365198820_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=AlTqbtqR1egAX-Pr8IN&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT8Ryc6-D0VKDc4qd4n1iXGyNrTNTTx3WYm_dKI6EPUqSA&oe=61E3594D',
      'Eitor Gabriel',
      'Vendedor da Systech Soluções',
      'A Systech deseja que seu natal seja cheio de amor e carinho. Feliz natal!',
      '2 d',
      numberReactions: 12,
      postImage: 'https://i.ibb.co/JRx7Jqm/feliz-natal-1.jpg'),
  PostModel(
      'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.6435-9/60199280_2353279744951639_5552234717530554368_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=2Kxp8qcMTxMAX8OHCkm&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT8e5vrKuIVkXWL2aGPN1yR1gHm4CdDjDKT1xcnEPb580A&oe=61EB7491',
      'Walber Natanael',
      'Articulador politico',
      'Compre na Rebeca Mini Closet!!!',
      '1 d',
      numberReactions: 30,
      numberComments: 12,
      postImage:
          'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.6435-9/111135380_1940475572751669_7674554466470986755_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=YnmCtU3d0tMAX_TGYXs&tn=werUYdW9Ilc68JyW&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT-ywrH7eCfI58wMh9WYdg8S1OswHF3IvLiPlvZ5gsKd6A&oe=61EE3699'),
];
