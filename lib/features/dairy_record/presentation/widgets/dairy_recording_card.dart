import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class DairyRecordingCard extends StatefulWidget {
  const DairyRecordingCard({
    super.key,
    this.isSub,
    this.onTap,
    this.title,
    this.content,
    this.subtitle,
    this.isCompleted = false,
    this.onChanged,
    this.onDelete,
  });
  final bool? isSub;
  final Function()? onTap;
  final String? title;
  final String? content;
  final String? subtitle;
  final bool isCompleted;
  final ValueChanged<bool?>? onChanged;
  final VoidCallback? onDelete;

  @override
  State<DairyRecordingCard> createState() => _DairyRecordingCardState();
}

class _DairyRecordingCardState extends State<DairyRecordingCard> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isCompleted;
  }

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
                if (widget.subtitle != null)
                  Text(
                    widget.subtitle!,
                    style: theme.labelMedium.copyWith(
                      fontSize: 10,
                      color: isChecked ? theme.white : theme.primaryText,
                    ),
                  ),
                if (widget.title != null)
                  Text(
                    widget.title!,
                    style: theme.bodyMedium.copyWith(
                      fontSize: 14,
                      color: isChecked ? theme.white : theme.primaryText,
                    ),
                  ),
                if (widget.content != null)
                  Text(
                    widget.content!,
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
                          isChecked = value ?? false;
                        });
                        widget.onChanged?.call(value);
                      },
                    ),
                  )
                : widget.onDelete != null
                ? Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.delete_outline,
                        color: isChecked ? theme.white : theme.error,
                      ),
                      onPressed: widget.onDelete,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
