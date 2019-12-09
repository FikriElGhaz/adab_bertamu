import 'package:flutter/material.dart';

void main() {
  runApp(AdabBertamu());
}

class AdabBertamu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Adab Bertamu";

    List<Choice> choices = const <Choice>[
      const Choice(
          title:
              'Ketika mengundang seseorang, hendaknya mengundang orang-orang yang bertakwa, bukan orang yang fajir (bermudah-mudahan dalam dosa)',
          description:
              'sebagaimana sabda Rasulullah shallallahu ‘alaihi wa sallam,لاَ تُصَاحِبْ إِلاَّ مُؤْمِنًا,وَلاَ يَأْكُلُ طَعَامَك َإِلاَّ تَقِيٌّ“Janganlah engkau berteman melainkan dengan seorang mukmin, dan janganlah memakan makananmu melainkan orang yang bertakwa!” (HR. Abu Dawud dan Tirmidzi)',
          imglink:
              'https://cdn.muslim.or.id/wp-content/uploads/2009/10/Adab-Bertamu-dan-Memuliakan-Tamu-810x500.jpg'),
      const Choice(
          title:
              'Tidak mengkhususkan mengundang orang-orang kaya saja, tanpa mengundang orang miskin',
          description:
              'berdasarkan sabda Nabi shallallahu ‘alaihi wa sallam,شَرُّ الطَّعَامِ طَعَامُ الْوَلِيمَةِ يُدْعَى لَهَا الأَغْنِيَاءُ ، وَيُتْرَكُ الْفُقَرَاءُ“Sejelek-jelek makanan adalah makanan walimah di mana orang-orang kayanya diundang dan orang-orang miskinnya ditinggalkan.” (HR. Bukhari Muslim)',
          imglink:
              'https://cdn.muslim.or.id/wp-content/uploads/2009/10/Adab-Bertamu-dan-Memuliakan-Tamu-810x500.jpg'),
      const Choice(
          title: 'Disunahkan mengucapkan selamat datang kepada para tamu',
          description:
              'sebagaimana hadits yang diriwayatkan dari Ibnu Abbas radhiyallahu ‘anhu, bahwasanya tatkala utusan Abi Qais datang kepada Nabi shallallahu ‘alaihi wa sallam, Beliau bersabda,مَرْحَبًا بِالْوَفْدِ الَّذِينَ جَاءُوا غَيْرَ خَزَايَا وَلاَ نَدَامَى“Selamat datang kepada para utusan yang datang tanpa merasa terhina dan menyesal.” (HR. Bukhari)',
          imglink:
              'https://cdn.muslim.or.id/wp-content/uploads/2009/10/Adab-Bertamu-dan-Memuliakan-Tamu-810x500.jpg'),
      const Choice(
          title:
              'Menghormati tamu dan menyediakan hidangan untuk tamu makanan semampunya saja. Akan tetapi, tetap berusaha sebaik mungkin untuk menyediakan makanan yang terbaik.',
          description:
              'Allah ta’ala telah berfirman yang mengisahkan Nabi Ibrahim ‘alaihis salam bersama tamu-tamunya:فَرَاغَ إِلىَ أَهْلِهِ فَجَاءَ بِعِجْلٍ سَمِيْنٍ . فَقَرَّبَهُ إِلَيْهِمْ قَالَ آلاَ تَأْكُلُوْنَ“Dan Ibrahim datang pada keluarganya dengan membawa daging anak sapi gemuk kemudian ia mendekatkan makanan tersebut pada mereka (tamu-tamu Ibrahim-ed) sambil berkata: ‘Tidakkah kalian makan?'
              'QS. Adz-Dzariyat: 26-27',
          imglink:
              'https://cdn.muslim.or.id/wp-content/uploads/2009/10/Adab-Bertamu-dan-Memuliakan-Tamu-810x500.jpg'),
      const Choice(
          title:
              'Mendekatkan makanan kepada tamu tatkala menghidangkan makanan tersebut kepadanya',
          description:
              'sebagaimana Allah ceritakan tentang Ibrahim ‘alaihis salam,فَقَرَّبَهُ إِلَيْهِمْ“Kemudian Ibrahim mendekatkan hidangan tersebut pada mereka.'
              'Qs. Adz-Dzariyat: 27',
          imglink:
              'https://cdn.muslim.or.id/wp-content/uploads/2009/10/Adab-Bertamu-dan-Memuliakan-Tamu-810x500.jpg'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
