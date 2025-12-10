import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class DairyRecordingCard extends StatefulWidget {
  const DairyRecordingCard({super.key, this.isSub, this.onTap});
  final bool? isSub;
  final Function()? onTap;
  @override
  State<DairyRecordingCard> createState() => _DairyRecordingCardState();
}

class _DairyRecordingCardState extends State<DairyRecordingCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const .all(18),
        width: .infinity,
        margin: .only(bottom: 16),
        decoration: BoxDecoration(
          color: isChecked ? theme.green00f : theme.blueB3,
          borderRadius: .circular(12),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "3*12",
                  style: theme.labelMedium.copyWith(
                    fontSize: 10,
                    color: isChecked ? theme.white : theme.primaryText,
                  ),
                ),
                Text(
                  "🛏️ Bench Press #1",
                  style: theme.bodyMedium.copyWith(
                    fontSize: 14,
                    color: isChecked ? theme.white : theme.primaryText,
                  ),
                ),
                Text(
                  "Here is my description in my memories #1",
                  style: theme.labelMedium.copyWith(
                    fontSize: 10,
                    color: isChecked ? theme.white : theme.primaryText,
                  ),
                ),
              ],
            ),
            widget.isSub ?? false
                ? Align(
                    alignment: Alignment.centerRight,
                    child: Checkbox.adaptive(
                      value: isChecked,
                      shape: const CircleBorder(),
                      checkColor: theme.white,
                      fillColor: WidgetStateProperty.all(Colors.transparent),
                      side: WidgetStateBorderSide.resolveWith((states) {
                        if (states.contains(WidgetState.selected)) {
                          return BorderSide(color: theme.white, width: 2);
                        }
                        return BorderSide(color: theme.fullBlack, width: 2);
                      }),
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
