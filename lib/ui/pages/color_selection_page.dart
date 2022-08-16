import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: SingleChildScrollView(
          child: Column(children: [
            ColorPalette(
              callback: showColor,
              baseColor: 'C21010',
              baseColor1: 'E64848',
              baseColor2: 'FFFDE3',
              baseColor3: 'CFE8A9',
              iconName: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/004/930/349/original/strawberry-fruit-line-for-web-presentation-logo-icon-symbol-free-vector.jpg'),
            ),
            ColorPalette(
                callback: showColor,
                baseColor: 'FFD24C',
                baseColor1: 'FFE69A',
                baseColor2: 'FFE59D',
                baseColor3: 'F1F0C0',
                iconName: Image.network(
                    'https://previews.123rf.com/images/mimacz/mimacz1707/mimacz170700105/82349424-fruta-de-lim%C3%B3n-logo-dise%C3%B1o-icono-simple.jpg')),
            ColorPalette(
                callback: showColor,
                baseColor: '371B58',
                baseColor1: '4C3575',
                baseColor2: '5B4B8A',
                baseColor3: '7858A6',
                iconName: Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/002/098/807/small_2x/cartoon-eggplant-icon-aubergine-symbol-fresh-vegetarian-salad-recipe-purple-colored-nutrition-foods-flat-cartoon-style-isolated-vegetable-clip-art-illustration-vector.jpg')),
            ColorPalette(
                callback: showColor,
                baseColor: 'FFD24C',
                baseColor1: 'FFE69A',
                baseColor2: 'FFE59D',
                baseColor3: 'F1F0C0',
                iconName: Image.network(
                    'https://previews.123rf.com/images/mimacz/mimacz1707/mimacz170700105/82349424-fruta-de-lim%C3%B3n-logo-dise%C3%B1o-icono-simple.jpg')),
          ]),
        ));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
