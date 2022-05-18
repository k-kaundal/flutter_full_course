import 'package:flutter/material.dart';

class TransactionListDesign extends StatefulWidget {
  const TransactionListDesign({Key? key}) : super(key: key);

  @override
  State<TransactionListDesign> createState() => _TransactionListDesignState();
}

class _TransactionListDesignState extends State<TransactionListDesign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/gradient-dynamic-blue-lines-background_23-2148995756.jpg?w=1800&t=st=1652272285~exp=1652272885~hmac=c8be4ca72b1c915c8791d19a60913548ec663742e32c6c6e756ac95e0d6856fb'),
                              fit: BoxFit.cover)),
                      width: size.width,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: size.height * 0.05,
                            bottom: size.height * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              child: Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.notifications_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.blue,width: 1),
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text(
                              "Welcome back,",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white70),
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            Text(
                              "Thomas",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text(
                              "Your Balance",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white70),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              "\$ 24,980.00",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.white24,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Text(
                                "Today",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 20),
                            child: ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: size.height * 0.07,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            )),
                                        margin:
                                            EdgeInsets.only(top: 10, right: 10),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Heading',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.003,
                                            ),
                                            Text(
                                              'Subheading',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Center(
                                          child: Text("\$ 300",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87)),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Text(
                                "Yesterday",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10,
                                left: 20,
                                right: 20,
                                bottom: size.height * 0.1),
                            child: ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: size.height * 0.07,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            )),
                                        margin:
                                            EdgeInsets.only(top: 10, right: 10),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Heading',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.003,
                                            ),
                                            Text(
                                              'Subheading',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Center(
                                          child: Text("\$ 300",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87)),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              width: size.width,
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Icon(
                    Icons.home,
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Icon(
                    Icons.home,
                    color: Colors.black38,
                  )),
                  Expanded(
                      child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: Icon(Icons.add),
                  )),
                  Expanded(
                      child: Icon(
                    Icons.home,
                    color: Colors.black38,
                  )),
                  Expanded(
                      child: Icon(
                    Icons.home,
                    color: Colors.black38,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
