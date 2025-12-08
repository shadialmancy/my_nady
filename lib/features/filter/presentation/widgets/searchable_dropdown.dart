import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class SearchableDropdown extends StatefulWidget {
  const SearchableDropdown({
    required this.controller,
    required this.items,
    required this.hint,
    required this.onSelected,
    super.key,
  });
  final TextEditingController controller;
  final List<String> items;
  final String hint;
  final Function(String) onSelected;
  @override
  State<SearchableDropdown> createState() => _SearchableDropdownState();
}

class _SearchableDropdownState extends State<SearchableDropdown> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return widget.items;
        }
        return widget.items.where((String option) {
          return option.toLowerCase().contains(
            textEditingValue.text.toLowerCase(),
          );
        });
      },
      onSelected: widget.onSelected,
      fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
        // Sync the autocomplete controller with widget controller initially
        if (widget.controller.text.isNotEmpty && controller.text.isEmpty) {
          controller.text = widget.controller.text;
        }

        return TextField(
          controller: controller, // Use autocomplete's controller
          focusNode: focusNode,
          onChanged: (value) {
            // Sync back to widget controller
            widget.controller.text = value;
            widget.onSelected(value);
          },
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: theme.bodySmall.copyWith(color: theme.grey99),
            prefixIcon: Icon(Icons.search, color: theme.grey8080),
            filled: true,
            fillColor: theme.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: theme.borderGrey),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.borderGrey),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.primary, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
      optionsViewBuilder: (context, onSelected, options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 200),
              color: theme.white,
              width: MediaQuery.of(context).size.width - 40,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options.elementAt(index);
                  return InkWell(
                    onTap: () => onSelected(option),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Text(option, style: theme.bodySmall),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
