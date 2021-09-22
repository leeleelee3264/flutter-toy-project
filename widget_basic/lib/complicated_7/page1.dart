import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


final dummyItems = [
  'https://images.chosun.com/resizer/PmYiWc8OT-KQPhsVCc_LHD05yvo=/650x398/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/KSFMXX3PKR52HMPBVTVIKTRLYM.jpg', 
  'https://images.chosun.com/resizer/wydHH7fOmZZmFC6kjWlJPq1OT9I=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/5SYL2OLE5P53YIYUAI5LGY2XEQ.jpg',
  'https://cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/LKVNDFMAZJHLBCIA2DAJURRB3E.jpg', 
]; 

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  print('click first row first column');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('taxi'),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('black'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('bike'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('taxi2'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('taxi'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('black'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('bike'),
                ],
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('taxi2'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(height: 150, autoPlay: true),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    )));
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (index) {
      return ListTile(
        leading: Icon(
          Icons.notifications_none,
        ),
        title: Text('[Event] this is notifications.'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
