import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SafeSvgIcon extends StatelessWidget {
  const SafeSvgIcon({
    super.key,
    required this.url,
    this.size = 22,
    this.color,
    this.fallbackIcon = Icons.check_circle_outline,
  });

  final String? url;
  final double size;
  final Color? color;
  final IconData fallbackIcon;

  static final Map<String, Uint8List?> _cache = <String, Uint8List?>{};

  @override
  Widget build(BuildContext context) {
    final String? iconUrl = url;
    if (iconUrl == null || iconUrl.isEmpty) {
      return Icon(fallbackIcon, size: size, color: color);
    }

    return FutureBuilder<Uint8List?>(
      future: _fetchSvgBytes(iconUrl),
      builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return SizedBox(width: size, height: size);
        }

        final Uint8List? bytes = snapshot.data;
        if (bytes == null) {
          return Icon(fallbackIcon, size: size, color: color);
        }

        return SvgPicture.memory(
          bytes,
          width: size,
          height: size,
          colorFilter: color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : null,
        );
      },
    );
  }

  static Future<Uint8List?> _fetchSvgBytes(String url) async {
    if (_cache.containsKey(url)) return _cache[url];

    try {
      final Response<List<int>> response = await Dio().get<List<int>>(
        url,
        options: Options(responseType: ResponseType.bytes),
      );

      final Uint8List bytes = Uint8List.fromList(response.data!);

      // A quick check to make sure the content is in SVG format, not an error in the HTML page, for example.
      final String head = String.fromCharCodes(bytes.take(200).toList());
      if (!head.contains('<svg') && !head.contains('<?xml')) {
        _cache[url] = null;
        return null;
      }

      _cache[url] = bytes;
      return bytes;
    } catch (_) {
      // 404, timeout, invalid content... any failure, we return null and display fallback.
      _cache[url] = null;
      return null;
    }
  }
}
