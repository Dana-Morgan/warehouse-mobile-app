import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../router.dart';
import '../../providers/app_initializer_provider.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(appInitializerProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {

    final state = ref.watch(appInitializerProvider);

    ref.listen(appInitializerProvider, (previous, next) {
      if (next.isFinished) {
        context.go(ScreenPaths.myBuildings);
      }
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                "assets/icons/icon.png",
                width: 140,
                height: 140,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Warehouse",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Pro",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            const Text(
              "Smart Rental & Billing Management",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 150),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "INITIALIZING SYSTEM",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Text(
                        "${state.progress} %",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  LinearProgressBar(
                    maxSteps: 100,
                    progressType: ProgressType.linear,
                    currentStep: state.progress,
                    progressColor: Colors.blue,
                    backgroundColor: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}