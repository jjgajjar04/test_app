import 'dart:js_util';
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:share_plus_web/share_plus_web.dart';
import 'package:test_app/utils/constants.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';
// import 'image_previews.dart';

class SocialShareScreen extends StatefulWidget {
  static const String id = Constants.SOCIAL_SHARE_SCREEN;

  @override
  _SocialShareScreenState createState() => _SocialShareScreenState();
}

class _SocialShareScreenState extends State<SocialShareScreen> {
  String text = '';

  String subject = '';

  var _navigator = html.window.navigator;
  List<String> imagePaths = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share Plugin Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Share Plugin Demo'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.share,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Share text:',
                      hintText: 'Enter some text and/or link to share',
                    ),
                    maxLines: 2,
                    onChanged: (String value) => setState(() {
                      text = value;
                    }),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Share subject:',
                      hintText: 'Enter subject to share (optional)',
                    ),
                    maxLines: 2,
                    onChanged: (String value) => setState(() {
                      subject = value;
                    }),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 12.0)),
                  // ImagePreviews(imagePaths, onDelete: _onDeleteImage),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('Add image'),
                    onTap: () async {
                      // final imagePicker = ImagePicker();
                      // final pickedFile = await imagePicker.getImage(
                      //   source: ImageSource.gallery,
                      // );
                      // if (pickedFile != null) {
                      //   setState(() {
                      //     imagePaths.add(pickedFile.path);
                      //   });
                      // }
                    },
                  ),
                  const Padding(padding: EdgeInsets.only(top: 12.0)),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          _onShareWeb(context);
                        },
                        // onPressed: text.isEmpty && imagePaths.isEmpty
                        //     ? null
                        //     : () => _onShare(context),
                        child: const Text('Share'),
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }

  void _onDeleteImage(int position) {
    setState(() {
      imagePaths.removeAt(position);
    });
  }

  Future<void> _onShareWeb(BuildContext context) async {
    try {
      await _navigator.share({'title': subject, 'text': text});
    } on NoSuchMethodError catch (_) {
      print('Unable to share on web : CATCH');

      //Navigator is not available or the webPage is not served on https
      final queryParameters = {
        if (subject != null) 'subject': subject,
        'body': text,
      };

      // see https://github.com/dart-lang/sdk/issues/43838#issuecomment-823551891
      final uri = Uri(
        scheme: 'mailto',
        query: queryParameters.entries
            .map((e) =>
                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
            .join('&'),
      );

      if (await canLaunch(uri.toString())) {
        print('Unable to share on web : IF');
        print(uri.toString());
        await launch(uri.toString());
      } else {
        print('Unable to share on web');
        throw Exception('Unable to share on web');
      }
    }
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    if (kIsWeb) {
      print('web');
      await _navigator.share({'title': subject, 'text': text});

      // await SharePlusPlugin().share(
      //   text,
      //   subject: subject,
      //   sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
      // );
      // await Share.share(
      //   text,
      //   subject: subject,
      // );
    } else {
      await Share.share(
        text,
        subject: subject,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      );
    }

    // if (imagePaths.isNotEmpty) {
    //   await Share.shareFiles(imagePaths,
    //       text: text,
    //       subject: subject,
    //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    // } else {
    //   await Share.share(text,
    //       subject: subject,
    //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    // }
  }
}
