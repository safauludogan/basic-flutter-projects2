import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview Dersleri'),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(//İçerisinde bulunan widgetlerin tıklanma gibi olaylarını sağlayan sınıf.
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(
                        //Boder.all ile box'ı çerçeve içerisine aldık
                        color: Colors.blue,
                        width: 5,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(10.0, 5.0),
                        blurRadius: 20.0,
                      ),
                    ],
                    color: Colors.blue,
                    gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.red],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/safa.jpg"),
                      fit: BoxFit.fill,
                    )),
                margin: const EdgeInsets.all(20),
                //color: Colors.teal[100 * ((index + 1) % 8)],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Merhaba Flutter $index',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => debugPrint("Merhaba flutter $index tıklanıldı"),
              onDoubleTap: () => debugPrint("Merhaba flutter $index çift basıldı"),
              onLongPress: () => debugPrint("Merhaba flutter $index uzun basıldı"),
              onHorizontalDragStart: (double) => debugPrint("Merhaba flutter $index uzun basıldı $double"),
            );
          }),
    );
  }
}

/*
GridView.extent(
        maxCrossAxisExtent: 100,
        scrollDirection: Axis.vertical,///Yatay şekilde scroll yapıyor.
        primary: true,///Scroll yaptığımız zaman sona gelindiğinde scroll efektini kapatır.
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
        ],
      )

 */

/*

GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,///Yatay şekilde scroll yapıyor.
        primary: true,///Scroll yaptığımız zaman sona gelindiğinde scroll efektini kapatır.
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text('Merhaba Flutter',textAlign: TextAlign.center,),
          ),
        ],
      )
 */
