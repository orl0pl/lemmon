import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

import '../url_launcher.dart';

class MarkdownText extends StatelessWidget {
  final String text;
  MarkdownText(this.text);

  @override
  Widget build(BuildContext context) => MarkdownBody(
        data: text,
        extensionSet: md.ExtensionSet.gitHubWeb,
        onTapLink: (href) {
          urlLauncher(href)
              .catchError((e) => Scaffold.of(context).showSnackBar(SnackBar(
                    content: Row(
                      children: [
                        Icon(Icons.warning),
                        Text("couldn't open link"),
                      ],
                    ),
                  )));
        },
        imageBuilder: (uri, title, alt) => CachedNetworkImage(
          imageUrl: uri.toString(),
          errorWidget: (context, url, error) => Row(
            children: [
              Icon(Icons.warning),
              Text("couldn't load image, ${error.toString()}")
            ],
          ),
        ),
      );
}
