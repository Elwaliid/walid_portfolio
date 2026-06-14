// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui_web' as ui if (dart.library.html) 'dart:ui';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class PhonePreview extends StatefulWidget {
  final String url;

  const PhonePreview({super.key, required this.url});

  @override
  State<PhonePreview> createState() => _PhonePreviewState();
}

class _PhonePreviewState extends State<PhonePreview> {
  static final Set<String> _registeredViews = <String>{};

  late final String viewId;

  @override
  void initState() {
    super.initState();
    viewId = 'iframe-${widget.url.hashCode}';
    if (kIsWeb && !_registeredViews.contains(viewId)) {
      _registeredViews.add(viewId);
      ui.platformViewRegistry.registerViewFactory(
        viewId,
        (int _) {
          final iframe = html.IFrameElement()
            ..src = widget.url
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%';
          return iframe;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
return const Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.phone_android, size: 64, color: Colors.grey),
              SizedBox(height: 8),
              Text('Platform views only supported on web.'),
            ],
          ),
        ),
      );
    }
    return Center(
      child: Container(
        width: 465,
        height: 850,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.black.withOpacity(0.4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: HtmlElementView(viewType: viewId),
        ),
      ),
    );
  }
}
