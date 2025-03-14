import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CameraControllerProvider extends ChangeNotifier {
  //final MobileScannerController _controller = MobileScannerController();

  MobileScannerController get controller => _controller;

  final MobileScannerController _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  void startCamera() {
    _controller.start();
  }

  void stopCamera() {
    _controller.stop();
  }

  void disposeController() {
    _controller.dispose();
  }
}
