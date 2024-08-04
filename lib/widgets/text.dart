import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    required this.iconData,
    required this.link,
    this.placeholderText,
    this.placeholderStyle,
    this.iconSize,
    this.iconColor,
    super.key,
  });

  /// Ignore to display icon only
  final String? placeholderText;

  /// Begin with `https://...`
  final String link;
  final IconData iconData;
  final TextStyle? placeholderStyle;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final newUrl = link.split('https://').last;
        final host = newUrl.split('/').first;
        final path =
            newUrl.split('/').last == host ? '' : newUrl.split('/').last;
        final uri = Uri(
          host: host,
          path: path,
          scheme: 'https',
        );
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: iconSize ?? 30,
              width: iconSize ?? 30,
              child: Icon(
                iconData,
                size: iconSize ?? 30,
                color: iconColor ?? Colors.grey,
              ),
            ),
            if (placeholderText != null) ...[
              const SizedBox(width: 10),
              Text(
                placeholderText ?? '',
                style: placeholderStyle ??
                    const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
