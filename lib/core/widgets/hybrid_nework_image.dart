import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:game_app_architecture_mvvm/core/utils/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';

import '../enums/app_enums.dart';

class HybridNetworkImage extends StatefulWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Map<String, String>? headers;
  final Alignment alignment;
  final Widget Function(BuildContext context, String child, Object stackTrace)? errorBuilder;

  @override
  State<HybridNetworkImage> createState() => _HybridNetworkImageState();

  factory HybridNetworkImage.network(
      String imageUrl, {
        Key? key,
        Map<String, String>? headers,
        double? width,
        Widget Function(BuildContext context, String child, Object? stackTrace)? errorBuilder,
        double? height,
        BoxFit fit = BoxFit.contain,
        Alignment alignment = Alignment.center,
      }) =>
      HybridNetworkImage._(
        key: key,
        headers: headers,
        width: width,
        errorBuilder: errorBuilder,
        height: height,
        fit: fit,
        alignment: alignment,
        imageUrl: imageUrl,
      );

  const HybridNetworkImage._({
    super.key,
    this.imageUrl,
    this.errorBuilder,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
    this.headers,
  });
}

class _HybridNetworkImageState extends State<HybridNetworkImage> {
  late final String fileExtension;

  @override
  void initState() {
    super.initState();
    fileExtension = _extractFileExtension(widget.imageUrl);
  }

  String _extractFileExtension(String? url) {
    if (url == null || url.isEmpty) return '';
    try {
      final uri = Uri.parse(url);
      return extension(uri.pathSegments.last);
    } catch (e) {
      logDebug('Error parsing URL: $e', level: Level.error);
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (fileExtension == '.svg') {
      return _buildSvgImage();
    }
    return _buildCachedNetworkImage();
  }

  Widget _buildSvgImage() {
    try {
      return SvgPicture.network(
        widget.imageUrl!,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        headers: widget.headers,
        placeholderBuilder: (context) {
          return widget.errorBuilder?.call(context, '', '') ??
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Loading SVG...'),
                ),
              );
        },
        alignment: widget.alignment,
      );
    } catch (e) {
      logDebug('Error loading SVG: $e', level: Level.error);
      return _buildErrorPlaceholder();
    }
  }

  Widget _buildCachedNetworkImage() {
    return CachedNetworkImage(
      imageUrl: widget.imageUrl!,
      alignment: widget.alignment,
      progressIndicatorBuilder: widget.errorBuilder ??
              (context, url, progress) => Container(color: AppColors.grey),
      errorWidget: widget.errorBuilder ?? (context, url, error) => _buildErrorPlaceholder(),
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
    );
  }

  Widget _buildErrorPlaceholder() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Unable To Load Image',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
