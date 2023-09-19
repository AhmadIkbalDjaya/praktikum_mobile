import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/dbHelper.dart';
import 'package:flutter_application_1/model/person.dart';

class PageListData extends StatefulWidget {
  const PageListData({super.key});

  @override
  State<PageListData> createState() => _PageListData();
}

class _PageListData extends State<PageListData> {
  DbHelper dbHelper = DbHelper();
  List<Person> listPerson = [];

  @override
  void initState() {
    super.initState();
    Future<List<Person>> listData = dbHelper.getAllPerson();
    listData.then((value) {
      setState(() {
        value.forEach((element) {
          listPerson.add(Person(
              NIK: element.NIK,
              name: element.name,
              umur: element.umur,
              hasMarried: element.hasMarried,
              gender: element.gender));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Data"),
        ),
        body: FutureBuilder(
          future: dbHelper.getAllPerson(),
          initialData: [],
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                if (snapshot.data == null) return null;
                return Column(
                  children: [
                    RowTilePerson(
                        title: "NIK \t :", data: snapshot.data![index].NIK.toString()),
                    RowTilePerson(title: "Nama \t:", data: snapshot.data![index].name!),
                    RowTilePerson(
                        title: "Umur \t :", data: snapshot.data![index].umur.toString()),
                    RowTilePerson(
                        title: "hasMarried \t :",
                        data:
                            int.parse(snapshot.data![index].hasMarried.toString()).parseToHasMarried()),
                    RowTilePerson(
                        title: "gender \t :", data: snapshot.data![index].gender!),
                  ],
                );
              },
            );
          },
        ));
  }
}

Widget RowTilePerson({String title = "", String data = ""}) {
  return Container(
    padding: const EdgeInsets.all(4),
    child: Row(
      children: [Text(title), Text(data)],
    ),
  );
}
