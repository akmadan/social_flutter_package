import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: App());
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Handles'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialWidget(
                      placeholderText: 'akshitmadan_',
                      iconData: SocialIconsFlutter.instagram,
                      iconColor: Colors.pink,
                      link: 'https://www.instagram.com/akshitmadan_/',
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'akmadan',
                      iconData: SocialIconsFlutter.github,
                      link: '',
                      iconColor: Colors.black,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'AkshitMadan6',
                      iconData: SocialIconsFlutter.twitter,
                      iconColor: Colors.lightBlue,
                      link: '',
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'AkshitMadan',
                      iconData: SocialIconsFlutter.youtube,
                      link: '',
                      iconColor: Colors.red,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.linkedin_box,
                      link: '',
                      iconColor: Colors.blueGrey,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'akmadan1717',
                      iconData: SocialIconsFlutter.apple,
                      link: '',
                      iconColor: Colors.black,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.behance,
                      link: '',
                      iconColor: Colors.deepPurple,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.discord,
                      link: '',
                      iconColor: Colors.blueAccent,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.paypal,
                      link: '',
                      iconColor: Colors.blueGrey,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.twitch,
                      link: '',
                      iconColor: Colors.deepPurpleAccent,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.facebook_box,
                      link: '',
                      iconColor: Colors.blueGrey,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SocialWidget(
                      placeholderText: 'Akshit Madan',
                      iconData: SocialIconsFlutter.spotify,
                      link: '',
                      iconColor: Colors.green,
                      placeholderStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialWidget(
                  placeholderText: '/AkshitMadan',
                  iconData: SocialIconsFlutter.youtube,
                  link: '',
                  iconSize: 20,
                  placeholderStyle:
                      const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SocialWidget(
                  placeholderText: '/Akshit Madan',
                  iconData: SocialIconsFlutter.linkedin_box,
                  link: '',
                  iconSize: 20,
                  placeholderStyle:
                      const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
