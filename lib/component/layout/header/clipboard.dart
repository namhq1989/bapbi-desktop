import 'package:bapbi_app/component/english/provider/clipboard.dart';
import 'package:bapbi_app/widget/hoverable_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderMenuClipboard extends ConsumerWidget {
  const HeaderMenuClipboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clipboard = ref.watch(clipboardTextProvider);

    if (!clipboard.isNewText) {
      return const SizedBox.shrink();
    }

    return HoverableEffect(
      child: const Row(
        children: [Text('Text detected'), Icon(LucideIcons.clipboardCheck)],
      ),
      onTap: () {
        ref.read(clipboardTextProvider.notifier).newTextProcessed();
      },
    );
  }
}
