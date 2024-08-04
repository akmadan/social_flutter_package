import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  SocialWidget({
    required this.iconData,
    required this.placeholderText,
    required this.link,
    this.placeholderStyle,
    this.iconSize,
    this.iconColor,
    super.key,
  });

  final String placeholderText, link;
  final IconData iconData;
  final TextStyle? placeholderStyle;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: iconSize ?? 30,
                  width: iconSize ?? 30,
                  child: Icon(
                    iconData,
                    size: iconSize ?? 30,
                    color: iconColor ?? Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () async {
                    await launchUrl(Uri.parse(link));
                  },
                  child: Text(
                    placeholderText,
                    style: placeholderStyle ??
                        const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
