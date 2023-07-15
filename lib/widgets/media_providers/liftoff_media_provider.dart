import 'package:path/path.dart';

abstract class LemmonMediaProvider {
  bool providesFor(Uri url);
  Future<Uri> getMediaUrl(Uri url);
}

class MP4MediaProvider implements LemmonMediaProvider {
  const MP4MediaProvider();

  @override
  Future<Uri> getMediaUrl(Uri url) {
    return Future(() => url);
  }

  @override
  bool providesFor(Uri url) {
    return extension(url.path) == '.mp4';
  }
}
