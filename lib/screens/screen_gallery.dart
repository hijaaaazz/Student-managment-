import 'dart:io';
import 'package:flutter/material.dart';

class ScreenGallery extends StatelessWidget {
  final List<File> imagelist;

  const ScreenGallery(this.imagelist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: imagelist.isEmpty
              ? const Center(
                  child: Text('No images to display'),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    crossAxisSpacing: 4.0, // Horizontal space between items
                    mainAxisSpacing: 4.0, // Vertical space between items
                  ),
                  itemCount: imagelist.length,
                  itemBuilder: (context, index) {
                    return Image.file(
                      imagelist[index],
                      fit: BoxFit.cover, // Make image cover the entire grid item
                    );
                  },
                ),
        ),
      ),
    );
  }
}
