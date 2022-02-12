import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewUsage extends StatelessWidget {
  ListViewUsage({Key? key}) : super(key: key);

  List<Student> allStudents = List.generate(
      50000,
      (index) => Student(index + 1, 'Öğrenci adı ${index + 1}',
          'Öğrenci soyadı ${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Listesi'),
      ),
      body: ListViewSeparated(),
    );
  }

  ListView ListViewSeparated() {
    return ListView.separated(
      //Bu Listview'in amacı; çok fazla veri olduğunda uygulamanın kasmasını engellemek ve bellekte yer açmak. Scroll yapıldıkça yeni verleri görüntüleniyor bu listview sayesinde
      itemBuilder: (BuildContext context, int index) {
        var currentStudent = allStudents[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onLongPress: () {
              _alertDialog(context, currentStudent);//AlertDialog başlat
            },
            onTap: () {
              EasyLoading.showToast(
                'Elemana tıklandı : $index',
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            title: Text(currentStudent.isim),
            subtitle: Text(currentStudent.soyisim),
            leading: CircleAvatar(
              child: Text(currentStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
      separatorBuilder: (context, index) {
        //Bu yapı ile 4 elemanda bir reklam koyabiliriz.
        if ((index + 1) % 4 == 0) {
          return const Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return const SizedBox();
      },
    );
  }

  ListView ListViewBuilderExample() {
    return ListView.builder(
      //Bu Listview'in amacı; çok fazla veri olduğunda uygulamanın kasmasını engellemek ve bellekte yer açmak. Scroll yapıldıkça yeni verleri görüntüleniyor bu listview sayesinde
      itemBuilder: (BuildContext context, int index) {
        var currentStudent = allStudents[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              print("Eleman tıklandı : $index");
            },
            title: Text(currentStudent.isim),
            subtitle: Text(currentStudent.soyisim),
            leading: CircleAvatar(
              child: Text(currentStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
    );
  }

  void _alertDialog(BuildContext context, Student selected) {
    //showCupertinoDialog(context: context, builder: builder)///IOS için
    showDialog(
        barrierDismissible: false,

        ///Boşluğa tıklanarak kapatmayı engelleme
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(selected.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Safa Uludoğan1' * 100),
                  Text('Safa Uludoğan2' * 100),
                  Text('Safa Uludoğan3' * 100),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);

                        ///AlertDialog'u kapatmaya yarıyor
                      },
                      child: Text('KAPAT')),
                  TextButton(onPressed: () {}, child: Text('TAMAM')),
                ],
              ),
            ],
          );
        });
  }

  ListView ClassicListView() {
    return ListView(
      children: allStudents
          .map((Student student) => ListTile(
                title: Text(student.isim),
                subtitle: Text(student.soyisim),
                leading: CircleAvatar(
                  child: Text(student.toString()),
                ),
              ))
          .toList(),
    );
  }
}

class Student {
  final int id;
  final String isim;
  final String soyisim;

  Student(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    // TODO: implement toString
    return 'İsim : $isim \nSoyisim : $soyisim \nid : $id';
  }
}
