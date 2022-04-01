// ignore_for_file: prefer_const_constructors

/*import 'package:futurek/shoe_page2.dart';
import 'package:flutter/material.dart';
import 'package:futurek/navbar.dart';

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

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<CardItem2> items2 = [
    CardItem2(
      urlImage2:
          'https://static.toiimg.com/photo/72359999.cms',
      
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height:15),
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Category', 
                                
                                style: TextStyle(fontWeight: FontWeight.w600,),),
                      ),
                    ),
          SizedBox(height:15),
          Container(
            height: 256,
            child: ListView.separated(
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
        ],
      ),
    );
  }

  // ignore: dead_code
  Widget buildCard2({
    required CardItem2 item2,
    required BuildContext context,
  }) =>
      Container(
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
      );


}*/
