// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element
import 'package:futurek/shoe_page.dart';
import 'package:flutter/material.dart';
import 'package:futurek/navbar.dart';
import 'package:futurek/shoe_page2.dart';
import 'package:futurek/shoe_page3.dart';

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

class CardItem2 {
  final String urlImage2;
  final String title2;
  final String subtitle2;

  const CardItem2({
    required this.urlImage2,
    required this.title2,
    required this.subtitle2,
  });
}

class CardItem3 {
  final String urlImage3;
  final String title3;
  final String subtitle3;

  const CardItem3({
    required this.urlImage3,
    required this.title3,
    required this.subtitle3,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<CardItem> items = [
    CardItem(
      urlImage:
          'https://images.pexels.com/photos/2529147/pexels-photo-2529147.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      
      
      title: 'Nike Free Run',
      subtitle: '\$99',
    ),
    CardItem(
      urlImage:
          'https://underarmour.scene7.com/is/image/Underarmour/3024250-404_DEFAULT?rp=standard-30pad|gridTileDesktop&scl=1&fmt=jpg&qlt=50&resMode=sharp2&cache=on,on&bgc=F0F0F0&wid=512&hei=640&size=472,600',
      title: 'Adidad free run',
      subtitle: '\$50',
    ),
    CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpozlaZ5vCRX6qz1ISfI7a2swqpFXvivy47jR1POAai3qom_f4KIMOB-gQoXdnzeLOUXk&usqp=CAU',
      title: 'Reebok',
      subtitle: '\$70',
    ),
    CardItem(
      urlImage:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title: 'Puma',
      subtitle: '\$89',
    ),
    CardItem(
      urlImage:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title: 'Jordan',
      subtitle: '\$97',
    ),
  ];

List<CardItem2> items2 = [
    CardItem2(
      urlImage2:
          'https://images.pexels.com/photos/2529147/pexels-photo-2529147.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      
      title2: 'Nike Free Run',
      subtitle2: '\$99',
    ),
    CardItem2(
      urlImage2:
          'https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Vikram.jpg',
      
      title2: 'Adidad free run',
      subtitle2: '\$50',
    ),
    CardItem2(
      urlImage2:
          'https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-tc149ma4aoe55t6cgajuo6q2c5-20190720231322.Medi.jpeg',
      
      title2: 'Reebok',
      subtitle2: '\$70',
    ),
    CardItem2(
      urlImage2:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title2: 'Puma',
      subtitle2: '\$89',
    ),
    CardItem2(
      urlImage2:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title2: 'Jordan',
      subtitle2: '\$97',
    ),
  ];
  
  
  List<CardItem3> items3 = [
    CardItem3(
      urlImage3:
          'https://static.toiimg.com/photo/72359999.cms',
      
      title3: 'Nike Free Run',
      subtitle3: '\$99',
    ),
    CardItem3(
      urlImage3:
          'https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Vikram.jpg',
      
      title3: 'Adidad free run',
      subtitle3: '\$50',
    ),
    CardItem3(
      urlImage3:
          'https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-tc149ma4aoe55t6cgajuo6q2c5-20190720231322.Medi.jpeg',
      
      title3: 'Reebok',
      subtitle3: '\$70',
    ),
    CardItem3(
      urlImage3:
          'https://image.shutterstock.com/image-photo/pair-pink-sport-shoes-on-260nw-228691018.jpg',
      title3: 'Puma',
      subtitle3: '\$89',
    ),
    CardItem3(
      urlImage3:
          'https://images.creator-prod.zmags.com/image/upload/q_auto,dpr_2.625,f_auto/c_scale,w_300/621cf9017826497cf6ceb463.jpeg',
      title3: 'Jordan',
      subtitle3: '\$97',
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
            SizedBox(height:3),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Category', 
                                  
                                  style: TextStyle(fontWeight: FontWeight.w600,),),
                        ),
                      ),
            SizedBox(height:0),
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
            SizedBox(height:0),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Category', 
                                  
                                  style: TextStyle(fontWeight: FontWeight.w600,),),
                        ),
                      ),
        
                      SizedBox(height: 0,),
        
                      Container(
                                  height: 300,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    primary: false,
                                    padding: EdgeInsets.all(16),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    separatorBuilder: (context, _) => SizedBox(
                                      width: 12,
                                    ),
                                    itemBuilder: (context, index) =>
                                        buildCard2(item2: items2[index], context: context),
                                  ),
                                ),

                               
                               
                                SizedBox(height:15),
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Category', 
                                
                                style: TextStyle(fontWeight: FontWeight.w600,),),
                      ),
                    ),

                     Container(
                                  height: 300,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    primary: false,
                                    padding: EdgeInsets.all(16),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    separatorBuilder: (context, _) => SizedBox(
                                      width: 12,
                                    ),
                                    itemBuilder: (context, index) =>
                                        buildCard3(item3: items3[index], context: context),
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

Widget buildCard2({
    required CardItem2 item2,
    required BuildContext context,
  }) =>
      Expanded(
        child: Container(
          width: 200,
          height: 100,
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
                                        item2: item2,
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


Widget buildCard3({
    required CardItem3 item3,
    required BuildContext context,
  }) =>
      Expanded(
        child: Container(
          width: 200,
          height: 100,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Material(
                      child: Ink.image(
                        image: NetworkImage(item3.urlImage3),
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoePage3(
                                        item3: item3,
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
                item3.title3,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                item3.subtitle3,
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
        ),
      );


}
