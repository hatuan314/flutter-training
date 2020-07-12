import 'package:flutter/material.dart';
/* Container
  - Decoration là thuộc tính được sử dụng khá nhiều khi gọi tới Container.
    Các thuộc tính của BoxDecoration hay được sử dụng:
      + borderRadius: Dùng để thay đổ độ bo cong của 1 hoặc nhiều cạnh viền của Container.
      + border: Dùng để thay đổi màu sắc, độ dày và kiểu của cạnh viền.
      + gravity: Dùng để tạo hiệu ứng đổ màu cho background Container Widget.
    * Note: ngoài ra còn các thuộc tính khác như color, image, shape,v.v... (Google ko tính phí :v).

  - Ngoài ra container còn có các thuộc tính khác như color, padding, margin.
  * Note: Nếu đã sử dụng decoration thì phải sử dụng thuộc tính color của
  BoxDecoration chứ ko được sử dụng thuộc tính color của Container
 */


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _mAppBar(),
              _searchBarView(),
              _mCardView(Colors.pink, 'dribbble', '123'),
              _mCardView(Colors.lightBlue, 'Behance', '207')
            ],
          ),
        ),
      ),
    );
  }

  Widget _mAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Protiaa',
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://znews-photo.zadn.vn/w660/Uploaded/ofh_btgazspf/2020_04_21/72425168_2190164277756889_5548989457421565952_o.jpg'),
          )
        ],
      );

  Widget _searchBarView() => Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.grey[400], width: 1)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search, color: Colors.white),
            SizedBox(
              width: 8,
            ),
            Text(
              'search...',
              style: TextStyle(fontSize: 18, color: Colors.grey[400]),
            )
          ],
        ),
      );

  Widget _mCardView(
          Color backgroundColor, String headTitle, String postsNumber) =>
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: backgroundColor),
        child: Column(
          children: <Widget>[
            SizedBox(height: 12),
            Icon(Icons.account_circle, size: 70, color: Colors.white),
            Text(
              '$headTitle',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text('@realvjy',
                style: TextStyle(fontSize: 18, color: Colors.white38)),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.white38, width: 2)),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '$postsNumber',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('shots',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white38,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Text('add new',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      );
}
