import 'package:flutter_svg/flutter_svg.dart';

Future loadSVG() async {
  await precachePicture(
    ExactAssetPicture(
        SvgPicture.svgStringDecoderBuilder, 'assets/illustration/berdoa.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/chevron-kanan.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(
        SvgPicture.svgStringDecoderBuilder, 'assets/illustration/computer.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/icon_artikel.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/icon_assesmen.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/icon_rangkuman.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/icon_video.svg'),
    null,
  );
  await precachePicture(
    ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
        'assets/illustration/pelajar_pancasila.svg'),
    null,
  );
}
