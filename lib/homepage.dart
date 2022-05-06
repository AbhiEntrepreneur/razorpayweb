import 'dart:html';
import 'dart:math';

import 'package:futurek/razorsho_e_page.dart'; // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element
import 'package:futurek/razorsho_e_page2.dart'; // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element
import 'package:futurek/t&c_page.dart'; // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:futurek/navbar.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String description;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.description,
    required this.subtitle,
  });
}

class CardItem2 {
  final String urlImage2;
  final String title2;
  final String description2;
  final String subtitle2;

  const CardItem2({
    required this.urlImage2,
    required this.title2,
    required this.description2,
    required this.subtitle2,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<CardItem> items = [
    CardItem(
      urlImage: 'Assests/images/cricbanner.png',
      title: 'Nike Free Run',
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle: '1',
    ),
    CardItem(
      urlImage: 'Assests/images/crickgt.png',
      title: 'Adidad free run',
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      subtitle: '40',
    ),
    CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpozlaZ5vCRX6qz1ISfI7a2swqpFXvivy47jR1POAai3qom_f4KIMOB-gQoXdnzeLOUXk&usqp=CAU',
      title: 'Reebok',
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle: '30',
    ),
    CardItem(
      urlImage:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title: 'Puma',
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle: '20',
    ),
    CardItem(
      urlImage:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title: 'Jordan',
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle: '10',
    ),
  ];

  List<CardItem2> items2 = [
    CardItem2(
      urlImage2: 'Assests/images/cricbanner.png',
      title2: 'Nike Free Run',
      description2:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle2: '1',
    ),
    CardItem2(
      urlImage2: 'Assests/images/crickgt.png',
      title2: 'Adidad free run',
      description2:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
      subtitle2: '40',
    ),
    CardItem2(
      urlImage2:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpozlaZ5vCRX6qz1ISfI7a2swqpFXvivy47jR1POAai3qom_f4KIMOB-gQoXdnzeLOUXk&usqp=CAU',
      title2: 'Reebok',
      description2:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle2: '30',
    ),
    CardItem2(
      urlImage2:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title2: 'Puma',
      description2:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle2: '20',
    ),
    CardItem2(
      urlImage2:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title2: 'Jordan',
      description2:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      subtitle2: '10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 500,
                  child: Center(
                    child: Image.network(
                      'Assests/images/crickgt.png',
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Category 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 12,
                    ),
                    itemBuilder: (context, index) =>
                        buildCard(item: items[index], context: context),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Category 2',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 12,
                    ),
                    itemBuilder: (context, index) =>
                        buildCard2(item2: items2[index], context: context),
                  ),
                ),
                Container(
                  // decoration: BoxDecoration(color: Colors.grey.shade100),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('WINERBOX'),
                      
                      Column(
                        children: [
                          Text('useful links'),
                          TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => tandc())), child: Text('onclick'
                          ,style: TextStyle(color: Colors.black),))
                         , Text('home'),
                          Text('privacy policy'),
                          Text('t&c'),
                          Text('about us')
                        ],
                      ),
                      Column(
                        children: [Text('contact us'), Text('email')],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: dead_code
  Widget buildCard({
    required CardItem item,
    required BuildContext context,
  }) =>
      Expanded(
        child: Container(
          height: 100,
          width: 200,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Material(
                      child: Ink.image(
                        image: NetworkImage(item.urlImage),
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoePage(
                                        item: item,
                                      ))),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                item.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                item.subtitle,
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
        ),
      );

  Widget buildCard2({
    required CardItem2 item2,
    required BuildContext context,
  }) =>
      Expanded(
        child: Container(
          height: 100,
          width: 200,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Material(
                      child: Ink.image(
                        image: NetworkImage(item2.urlImage2),
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoePage2(
                                        item: item2,
                                      ))),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                item2.title2,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                item2.subtitle2,
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
        ),
      );
}
