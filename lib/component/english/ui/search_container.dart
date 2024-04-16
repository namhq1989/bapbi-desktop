import 'package:bapbi_app/widget/container_standard.dart';
import 'package:bapbi_app/widget/typing_animation.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatefulWidget {
  const SearchContainer({super.key});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  final TextEditingController _controller = TextEditingController();
  String _searchResult = '';

  void _handleSearch() {
    setState(() {
      _searchResult = 'Welcome to the Overview:\n\n'
          'Here are the key points we will cover today:\n'
          '- **Introduction to the Platform**: Learn about the core features and how they can benefit you.\n'
          '- **User Management**: Understand how to manage user roles and permissions effectively.\n'
          '- **Data Security**: Learn about the measures we take to ensure your data is safe.\n\n'
          'Next Steps:\n'
          '- Set up your account by following the onboarding steps.\n'
          '- Start uploading your data as soon as your account is ready.\n'
          '- Contact support if you encounter any issues or have questions.\n\n'
          'Thank you for choosing us as your trusted partner. We look forward to supporting your journey! ${DateTime.now().second}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ContainerStandard(
      width: 500,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Search Word',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter a word',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller
                      .clear(); // Clear the input field when the icon is pressed
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _handleSearch,
            child: const Text('Submit'),
          ),
          const SizedBox(height: 20),
          TypingTextAnimation(
            text: _searchResult,
          ),
        ],
      ),
    );
  }
}
