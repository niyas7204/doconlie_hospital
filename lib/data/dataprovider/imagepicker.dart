import 'package:image_picker/image_picker.dart';

Future<XFile?> pickImage() async {
  final ImagePicker picker = ImagePicker();
  XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image;
}
