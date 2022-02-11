import 'dart:math' as math;
import 'package:flutter/material.dart';

class CollapsableToolBarExample extends StatelessWidget {
  const CollapsableToolBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement createState
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // title: const Text("Sliver AppBar2"),
          //  backgroundColor: Colors.red,
          expandedHeight: 100,
          floating: false,
          //Scroll sırasında, appbar'ın yukarı doğru scroll yapraken hemen görünmesini sağlar
          pinned: true,
          //Scroll sırasında appbar'ın sürekli görünür kalmasını sağlıyor(scroll yapsak bile başlık görünür olarak kalır)
          snap: false,
          //Scroll sırasında appbar'ın hemen görünmesini sağlar
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Sliver AppBar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/nazim.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        //Sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverGrid(
          delegate: SliverChildListDelegate(stillListElements()),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
        ),

        //Dinamik (builder ile üretilen) elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamicElementMakingFunction,
                childCount: 6),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3)),

        //Dinamik (builder ile üretilen) elemanlarla bir satırdaki elemanın maksimum genişliğini söylediğimiz grid türü
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100),
          delegate: SliverChildBuilderDelegate(_dinamicElementMakingFunction,
              childCount: 6),
        ),

        SliverGrid.count(
          crossAxisCount: 6,
          children: stillListElements(),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(stillListElements()),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                  _dinamicElementMakingFunction,
                  //StillListElements fonksiyonuna nazaran 6 tane widgeti otomatik oluşturur.
                  childCount: 6)),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(stillListElements()),
            itemExtent: 100),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamicElementMakingFunction,
                childCount: 6),
            itemExtent: 50)
      ],
    );
  }

  List<Widget> stillListElements() {
    return [
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.red,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: const Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamicElementMakingFunction(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      color: makeRandomColor(),
      alignment: Alignment.center,
    );
  }

  Color makeRandomColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
