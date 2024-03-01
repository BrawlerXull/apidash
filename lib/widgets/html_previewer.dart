import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlPreviewer extends StatelessWidget {
  final String htmlData;

  const HtmlPreviewer({
    Key? key,
    required this.htmlData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(htmlData));
    return WebViewWidget(controller: controller);
  }
}
