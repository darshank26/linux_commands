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
            top: 10.0, bottom: 10.0, left: 4, right: 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/images/27.png', width: 200,height: 200,)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Container(
                        child: Text("""
Linux is a free and open-source operating system kernel that serves as the foundation for various Linux distributions (often called distros). Developed by Linus Torvalds and released in 1991, Linux is known for its stability, security, and flexibility.

Here are some key points about Linux:

Open Source: Linux is distributed under an open-source license, which allows users to access, modify, and distribute the source code freely. This encourages collaboration, customization, and continuous improvement.

Kernel: Linux refers specifically to the kernel of the operating system. The kernel is responsible for managing hardware resources, providing core services, and facilitating communication between software and hardware components.

Linux Distributions: Linux distributions are complete operating systems built around the Linux kernel. Examples of popular Linux distributions include Ubuntu, Fedora, Debian, CentOS, and Arch Linux. Each distribution may have its own package manager, software repositories, and default configurations.

Command Line Interface: Linux offers a powerful command-line interface (CLI), often called the shell, where users can interact with the system by entering commands. The most common shell in Linux is the Bash (Bourne Again Shell), but there are other options such as Zsh, Fish, and more.

Package Management: Linux distributions use package managers to install, update, and manage software packages. Package managers handle dependencies, resolve conflicts, and provide a centralized repository of software packages. Examples of package managers include APT (Advanced Package Tool) for Debian-based distributions and YUM/DNF for Red Hat-based distributions.

Multiuser and Multitasking: Linux is designed to be a multiuser operating system, allowing multiple users to simultaneously use the system and run processes independently. It supports multitasking, where multiple processes can run concurrently, utilizing the system resources efficiently.

Security: Linux is known for its robust security features. Access control mechanisms, file permissions, user management, and built-in security tools contribute to creating a secure computing environment. Regular security updates and patches are released to address vulnerabilities.

Server and Embedded Systems: Linux is widely used in server environments due to its stability, scalability, and vast software ecosystem. It powers a significant portion of web servers, database servers, and cloud infrastructure. Linux is also commonly used in embedded systems, such as IoT devices, routers, smart TVs, and more.

Community and Support: Linux has a vibrant and active community of developers, contributors, and users who collaborate, share knowledge, and provide support through forums, mailing lists, and online communities. Documentation, tutorials, and online resources are widely available to help users learn and troubleshoot Linux-related topics.

Linux has gained popularity across various domains due to its versatility, performance, and the principles of open-source software. It is used by individuals, organizations, and governments worldwide for desktop computing, servers, scientific research, mobile devices, and more.
                        """,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,)),
                        )
                    )
                ),
              ),
            ],
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
