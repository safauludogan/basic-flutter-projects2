import 'package:flutter/material.dart';

class ListviewLayoutProblems extends StatelessWidget {
  const ListviewLayoutProblems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview problemleri'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text('Başladı'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,///Listview'i yatay yapıyor.
                //shrinkWrap: true,///Listview'in içindeki widgetler kadar yer kaplamasını sağlıyor
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                ],
              ),
            ),
            Text('Bitti'),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }

  Column listInColumn() {
    return Column(
        children: [
          Text('Başladı'),
          Expanded(
            child: ListView(
              //shrinkWrap: true,///Listview'in içindeki widgetler kadar yer kaplamasını sağlıyor
              children: [
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade400,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade200,
                ),
                Container(
                  height: 200,
                  color: Colors.orange.shade400,
                ),
              ],
            ),
          ),
          Text('Bitti'),
        ],
      );
  }
}
