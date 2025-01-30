import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  final String name;
  final String description;
  final String image;
  const MainCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  bool heart = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 200,
        maxHeight: 350,
        minHeight: 350,
      ),
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: Theme.of(context).textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          widget.description,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 4,
            child: IconButton(
              onPressed: () {
                setState(() => heart = !heart);
            

              },
              icon: Icon(
                color: heart ? Colors.red : null,
                heart ? Icons.favorite : Icons.favorite_outline,
              ),
            ),
          ),
          if (heart)
            const Positioned(
              top: 12,
              left: 12,
              child: Icon(Icons.bookmark),
            ),
        ],
      ),
    );
  }
}
