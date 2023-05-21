import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../AdHelper/adshelper.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}


class _AboutState extends State<About> {

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

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('About Git'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 14.0, bottom: 14.0, left: 4, right: 4),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Container(
                    child: Text("""Git is a distributed version control system that is widely used for managing and tracking changes to files and source code. It was created by Linus Torvalds in 2005 to aid in the development of the Linux kernel, but it has since become one of the most popular version control systems for software development.

    Here are some key concepts and terms related to Git:

    Repository: A repository, or repo, is a collection of files and their revision history. It can be located on a local machine or hosted on a remote server.

    Commit: A commit is a record of changes made to the repository. It represents a specific point in the history of the project. Each commit has a unique identifier and includes information about the changes made, such as the author, date, and a commit message.

    Branch: A branch is a parallel version of the repository that allows for independent development. Each branch can have its own commits and history. Branching is useful for working on new features or fixing bugs without affecting the main codebase.

    Merge: Merging is the process of combining changes from one branch into another. It integrates the commits from a source branch into a target branch, combining the changes made in both branches.

    Remote: A remote is a copy of a repository that is hosted on a server, allowing multiple developers to collaborate on the same project. Common remote hosting services include GitHub, GitLab, and Bitbucket.

    Clone: Cloning creates a copy of a repository on a local machine. This allows developers to have their own local version of the project to work on and make changes.

    Pull: Pulling is the process of updating a local repository with the latest changes from a remote repository. It fetches the changes and merges them into the current branch.

    Push: Pushing is the process of sending local commits to a remote repository. It updates the remote repository with the latest changes made locally.

    Git provides a powerful set of features for collaboration, branching, merging, and tracking changes, making it an essential tool for software development teams. It is widely supported across different operating systems and has a vast ecosystem of tools and services built around it.""",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.openSans(textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,)),
                    )
                )
            ),
          ),
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
}
