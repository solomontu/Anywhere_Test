import 'package:anywhere/screens/characters/screens/character_detail_screen.dart';
import 'package:anywhere/shared%20components/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../core/size_config.dart';
import '../../../shared components/widget/character_tile.dart';
import '../../../shared components/widget/custom_appbar.dart';

class CharactersListScreen extends StatelessWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Characters List Screen",
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(flex: 2, child: CustomTextField()),
          Expanded(
            flex: DeviceType.deviceOrientation(context) ? 40 : 30,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) => CharacterTiles(
                  index: index,
                  onTap: !DeviceType.isTablet
                      ? () {}
                      : () {
                          /// Todo: navigate with Go router
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CharacterDetailScreen()));
                        }),
            ),
          ),
        ],
      ),
    );
  }
}
