import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<ListModel> listItem=[];
  @override
  void initState() {
    // TODO: implement initState
    listItem = [
      ListModel(subHeading: "1 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "2 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "1 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "2 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "1 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "2 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "1 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading"),
      ListModel(subHeading: "2 sub Heading", dateTime: "30", imageUri: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg", mainHeading: "Heading")
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(1),
            elevation: 3,
            child: Container(
              height: 70,
              margin: EdgeInsets.all(3),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                            listItem[index].imageUri,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(listItem[index].mainHeading, style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),), Text(
                            listItem[index].subHeading)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(listItem[index].dateTime, style: TextStyle(fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),)),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


class ListModel {
  String imageUri;
  String mainHeading;
  String subHeading;
  String dateTime;

  ListModel({
    required this.subHeading, required this.dateTime, required this.imageUri, required this.mainHeading
  });
}