import 'package:futurek/shoe_page.dart'; // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:futurek/navbar.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<CardItem> items = [
    CardItem(
      urlImage:
          'https://images.pexels.com/photos/2529147/pexels-photo-2529147.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      title: 'Nike Free Run',
      subtitle: '10',
    ),
    CardItem(
      urlImage:
          'https://underarmour.scene7.com/is/image/Underarmour/3024250-404_DEFAULT?rp=standard-30pad|gridTileDesktop&scl=1&fmt=jpg&qlt=50&resMode=sharp2&cache=on,on&bgc=F0F0F0&wid=512&hei=640&size=472,600',
      title: 'Adidad free run',
      subtitle: '50',
    ),
    CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpozlaZ5vCRX6qz1ISfI7a2swqpFXvivy47jR1POAai3qom_f4KIMOB-gQoXdnzeLOUXk&usqp=CAU',
      title: 'Reebok',
      subtitle: '70',
    ),
    CardItem(
      urlImage:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title: 'Puma',
      subtitle: '89',
    ),
    CardItem(
      urlImage:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title: 'Jordan',
      subtitle: '97',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 3),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
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
          ],
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
}
