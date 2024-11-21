import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  final String url;
  final double size;
  const QrCode({super.key, required this.url,required this.size});

  @override
  State<StatefulWidget> createState() {
    return QrCodeState();
  }
}

class QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return QrImageView(
      version: QrVersions.auto,
      data: widget.url,
      size: widget.size,
    );
  }
}
