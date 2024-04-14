import 'package:bapbi_app/component/health/provider/hydration_profile.dart';
import 'package:bapbi_app/component/health/provider/hydration_stats.dart';
import 'package:bapbi_app/utility/error.dart';
import 'package:bapbi_app/widget/container_standard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HydrationStats extends StatelessWidget {
  const HydrationStats({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerStandard(
        width: 300,
        padding: const EdgeInsets.all(20.0),
        content: Consumer(
          builder: (context, ref, _) {
            final stats = ref.watch(hydrationStatsProvider);
            return stats.when(
              data: (data) {
                return Center(
                  child:
                      Text('Longest streak value: ${data.longestStreakValue}'),
                );
              },
              error: (error, _) {
                if (error is AppError) {
                  if (error.code == 'health_hydration_profile_not_found') {
                    return Column(
                      children: [
                        Center(
                          child: Text(error.message!),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(hydrationProfileProvider.notifier)
                                .enalbe();
                          },
                          child: const Text('Enable'),
                        ),
                      ],
                    );
                  }

                  return Center(
                    child: Text(error.message!),
                  );
                }
                return Center(
                  child: Text(error.toString()),
                );
              },
              loading: () => const SizedBox.shrink(),
            );
          },
        ));
  }
}
