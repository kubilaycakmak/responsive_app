import 'package:flutter/material.dart';

import 'style/font_style/font_style.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 1100 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 69, horizontal: 69),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/aristo137x37.png'),
                  ),
                ),
                SizedBox(
                  width: 43.58,
                ),
                Container(
                  width: 1,
                  height: 38,
                  color: Color.fromRGBO(19, 21, 25, 0.1),
                ),
                SizedBox(
                  width: 43,
                ),
                Container(
                  child: FlatButton(
                    child: Text(
                      'Kategoriler',
                      style: navFontStyle,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 44,
                ),
                MaterialButton(
                  color: Color.fromRGBO(248, 248, 251, 1),
                  minWidth: 258,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Arama",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black26,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Eğitim ver",
                  style: navFontStyle,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Üye Ol",
                  style: navFontStyle,
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                MaterialButton(
                  color: Colors.white,
                  minWidth: 128,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Giriş Yap",
                    style: navFontStyle,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                MaterialButton(
                  color: Color.fromRGBO(125, 140, 197, 1),
                  minWidth: 80,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5.78,
                      ),
                      Text(
                        '8',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Image(
                  image: AssetImage('assets/images/aristo137x37.png'),
                ),
              ),
              Container(
                width: 1,
                height: 40,
                color: Colors.black12,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: FlatButton(
                  child: Text('Kategoriler'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kurumsal",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Üye Ol",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.white,
                  minWidth: 258,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Arama",
                        style: TextStyle(color: Colors.black26, fontSize: 18),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black26,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                MaterialButton(
                  color: Colors.white,
                  minWidth: 128,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                  onPressed: () {},
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                MaterialButton(
                  color: Color.fromRGBO(125, 140, 197, 1),
                  minWidth: 80,
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5.78,
                      ),
                      Text(
                        '8',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
