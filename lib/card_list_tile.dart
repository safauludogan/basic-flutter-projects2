
import 'package:flutter/material.dart';

class CardAndListTitle extends StatelessWidget {
  const CardAndListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card and List Tile'),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buton'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChild() {
    return SingleChildScrollView(
      child: Column(
        children: [
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
        ],
      ),
    );
  }

  Column singleListElement() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade200,
          shadowColor: Colors.red,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık kısmı'),
            subtitle: Text('Alt başlık'),
            trailing: Icon(Icons.read_more),
          ),
        ),
        const Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 30,
          endIndent: 30,
        )
      ],
    );
  }
}
