import 'package:flutter/material.dart';
import '../style.dart';
import '../components/quick_action.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  // Example search results
  final List<Map<String, String>> _items = [
    {'title': 'Football Boots', 'image': 'assets/images/3.jpg'},
    {'title': 'Team Jersey', 'image': 'assets/images/10.jpg'},
    {'title': 'Goalkeeper Gloves', 'image': 'assets/images/Glove.png'},
    {'title': 'Soccer Ball', 'image': 'assets/images/B2.jpeg'},
  ];

  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
  }

  void _searchItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = _items;
      } else {
        _filteredItems = _items
            .where((item) =>
                item['title']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Search Items", style: AppTextStyles.heading),
            const SizedBox(height: AppSpacing.medium),

            // Search bar
            TextField(
              controller: _searchController,
              onChanged: _searchItems,
              decoration: InputDecoration(
                hintText: "Search for items...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: AppSpacing.large),

            // Quick action row (optional)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: QuickAction(
                    icon: Icons.local_fire_department,
                    label: "Popular",
                    onTap: () {},
                  ),
                ),
                const SizedBox(width: AppSpacing.small),
                Expanded(
                  child: QuickAction(
                    icon: Icons.new_releases,
                    label: "New",
                    onTap: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSpacing.large),

            // Search results
            Expanded(
              child: _filteredItems.isEmpty
                  ? const Center(
                      child: Text("No results found"),
                    )
                  : ListView.builder(
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = _filteredItems[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          margin:
                              const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            leading: Image.asset(
                              item['image']!,
                              width: 50,
                              height: 50,
                            ),
                            title: Text(item['title']!),
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
