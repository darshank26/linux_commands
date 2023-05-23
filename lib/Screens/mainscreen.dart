import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:linux_commands/AdHelper/adshelper.dart';
import 'package:linux_commands/Screens/aboutus.dart';
import 'package:linux_commands/Screens/listscreen.dart';
import 'package:linux_commands/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }

  final List<String> images = [
    "assets/images/27.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/9.png",
    "assets/images/10.png",
    "assets/images/11.png",
    "assets/images/12.png",
    "assets/images/13.png",
    "assets/images/14.png",
    "assets/images/15.png",
    "assets/images/16.png",
    "assets/images/17.png",
    "assets/images/18.png",
    "assets/images/19.png",
    "assets/images/20.png",
    "assets/images/21.png",
    "assets/images/22.png",
    "assets/images/23.png",
    "assets/images/24.png",
    "assets/images/25.png",
    "assets/images/26.png",
    "assets/images/more.png",

  ];

  final List<String> titles = [
    'About Linux',
    "Commands starts with 'A'",
    "Commands starts with 'B'",
    "Commands starts with 'C'",
    "Commands starts with 'D'",
    "Commands starts with 'E'",
    "Commands starts with 'F'",
    "Commands starts with 'G'",
    "Commands starts with 'H'",
    "Commands starts with 'I'",
    "Commands starts with 'J'",
    "Commands starts with 'K'",
    "Commands starts with 'L'",
    "Commands starts with 'M'",
    "Commands starts with 'N'",
    "Commands starts with 'O'",
    "Commands starts with 'P'",
    "Commands starts with 'Q'",
    "Commands starts with 'R'",
    "Commands starts with 'S'",
    "Commands starts with 'T'",
    "Commands starts with 'U'",
    "Commands starts with 'V'",
    "Commands starts with 'W'",
    "Commands starts with 'X'",
    "Commands starts with 'Y'",
    "Commands starts with 'Z'",
    "More Apps",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LINUX Commands'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: ()
              {
                if(index == 0)
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: About()));

                  }
                else if(index == 27)
                {
                  launchURL();
                }
                else
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ListScreen(listIndex : index)));

                  }
              },
              child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // if you need this
              side: BorderSide(
              color: kthirdcolor,
              width: 2,
              )),
                color: kthirdcolor,
                child: Column(
                  children: [
                    Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        titles[index],
                          style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w700,))
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isBannerAdReady)
            Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
        ],
      ),

    );
  }


  void launchURL() async {
    const url = 'https://play.google.com/store/apps/developer?id=Darshan+Komu';  // Replace with your desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}


