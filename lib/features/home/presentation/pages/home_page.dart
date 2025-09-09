import 'package:flutter/material.dart';
import 'package:wrapcast/core/dummy_data/dummy_data.dart';
import 'package:wrapcast/core/widgets/appbar_widget.dart';
import 'package:wrapcast/features/home/presentation/widgets/custom_cast_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: ListView.builder(
        itemCount: dummyCasts.length,
        itemBuilder: (context, index) {
          final data = dummyCasts;
          return CustomCastContainer(
            imageUrl: data[index].profileImage,
            userName: data[index].userName,
            castedFrom: data[index].castedFrom,
            castImage: data[index].castImage,
            castedAt: data[index].casterAt,
            castText: data[index].castText,
            castInfo: data[index].castInfo,
          );
        },
      ),
    );
  }
}
