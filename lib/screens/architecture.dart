import 'package:flutter/material.dart';

class Architecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4F51C0),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+91 7985552408',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  iconSize: 29,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Archi',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
//                SizedBox(width: 10.0),
                Text('tecture',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                topRight: Radius.circular(75.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 230.0,
                    child: ListView(
                      children: [
                        _buildItem(
                          'assets/img/house.png',
                          'House Construction Package',
                          1515,
                        ),
                        _buildItem(
                          'assets/img/commercial.jpg',
                          'Commercial Construction Package',
                          1390,
                        ),
                        _buildItem(
                          'assets/img/wall.jpg',
                          'Compound Wall Package',
                          675,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(String imgPath, String name, int area) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10, bottom: 20),
      child: InkWell(
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 27,
                color: Colors.black12, // Black color with 12% opacity
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Starts at $area per sq. ft.',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 85.0,
                        width: 120.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
