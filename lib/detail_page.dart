import 'package:flutter/material.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final CardInfo cardInfo;

  const DetailPage({Key key, this.cardInfo}) : super(key: key);

  // Context
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/detail_page_background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      // padding: const EdgeInsets.all(32.0),
                      padding: const EdgeInsets.fromLTRB(10, 300, 10, 100),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[50].withOpacity(0.3),
                          border: Border.all(
                            color: Colors.indigo[50].withOpacity(0),
                            width: 15,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Text(
                              cardInfo.name,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
                                    blurRadius: 15,
                                  ),
                                ],
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              cardInfo.suit ?? '',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 31,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 32),
                            // Overall Section
                            Text(
                              'Overall',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.pink[100],
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(color: Colors.black38),
                            // SizedBox(height: 16),
                            Text(
                              cardInfo.description ?? '',
                              maxLines: 40,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.red[50],
                                  ),
                                ],
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            // Upright Section
                            Text(
                              'Upright',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.pink[100],
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(color: Colors.black38),
                            Text(
                              cardInfo.upright ?? '',
                              maxLines: 40,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.red[50],
                                  ),
                                ],
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 20),
                            // Reversed Section
                            Text(
                              'Reversed',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.pink[100],
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(color: Colors.black38),
                            Text(
                              cardInfo.reversed ?? '',
                              maxLines: 40,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.red[50],
                                  ),
                                ],
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 20),
                            // Yes or No Section
                            Text(
                              'Yes or No',
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.pink[100],
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Divider(color: Colors.black38),
                            Text(
                              cardInfo.yesOrNo ?? '',
                              maxLines: 40,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.red[50],
                                  ),
                                ],
                                fontFamily: 'PlayfairDisplay',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 20),
                            // Gallery Section
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.only(left: 32.0),
                      child: ListView.builder(
                          itemCount: cardInfo.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    cardInfo.images[index],
                                    fit: BoxFit.cover,
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 30,
                child: Hero(
                  tag: cardInfo.position,
                  child: Container(
                      height: 1976 / 8,
                      width: 1200 / 8,
                      child: Image.asset(cardInfo.iconImage)),
                ),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Text(
                  cardInfo.position.toString(),
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 100,
                    // color: Colors.lightBlue[50].withOpacity(0.5),
                    color: Colors.indigo[50].withOpacity(0.3),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
