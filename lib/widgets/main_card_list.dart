import 'package:flutter/material.dart';

class MainCardList extends StatefulWidget {
  final String name;
  final String description;
  final String image;
  const MainCardList({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  State<MainCardList> createState() => _MainCardListState();
}

class _MainCardListState extends State<MainCardList> {
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
        minWidth: 300,
        maxHeight: 120,
        minHeight: 120,
      ),
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 120,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: Theme.of(context).textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
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
