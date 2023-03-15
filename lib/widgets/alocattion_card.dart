import 'package:alo_simulator/models/allocation.dart';
import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/styles/alo_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:image_stack/image_stack.dart';

// ignore: must_be_immutable
class AllocationCard extends StatelessWidget {
  Allocation data;
  double? gap;
  Function()? onPressed;

  AllocationCard({Key? key, required this.data, this.onPressed, this.gap = 0})
      : super(key: key);

  List<String> getPhotos() {
    List<String> photos = [];
    var collaborators = data.collaborators;
    if (collaborators.isNotEmpty) {
      for (var collaborator in collaborators) {
        photos.add(collaborator.photo);
      }
    }
    return photos;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: TextButton.styleFrom(
              padding: AloPaddings.card,
              backgroundColor: data.theme,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: onPressed,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              data.title,
              style: AloTextStyles.title,
            ),
            Column(
              children: [
                ImageStack(
                  imageList: getPhotos(),
                  totalCount: getPhotos().length,
                  imageRadius: 32,
                  imageCount: 3,
                  imageBorderWidth: 2,
                  imageBorderColor: Colors.white,
                )
              ],
            )
          ]),
        ),
        SizedBox(height: gap)
      ],
    );
  }
}
