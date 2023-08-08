import 'package:anywhere/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class CharacterDetailWidget extends StatelessWidget {
  const CharacterDetailWidget({
    super.key,
    required this.title,
    required this.description,
    this.image,
  });

  final String title;
  final String description;
  final String? image;

  ///Todo: use image later as a placeholder

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          image!.isEmpty
              ? Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppTheme.water)),
                  child: Icon(Icons.person_outlined,size: 100,),
                )
              : Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: Image.network(image!).image),
                      border: Border.all(color: AppTheme.water)),
                ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text(
              'Title: $title',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(

                  fontSize: 20,
                  color: AppTheme.black),
            ),
            subtitle: Wrap(
              children: [
                Text(
                  'Description: $description',
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
