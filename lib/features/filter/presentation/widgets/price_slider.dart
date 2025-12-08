import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key, required this.priceRange, this.onSelected});
  final RangeValues priceRange;
  final Function(RangeValues)? onSelected;
  @override
  State<PriceSlider> createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RangeSlider(
          values: widget.priceRange,
          min: 0,
          max: 100000,
          divisions: 100,
          activeColor: theme.primary,
          inactiveColor: theme.borderGrey,
          labels: RangeLabels(
            '\$${widget.priceRange.start.round()}',
            '\$${widget.priceRange.end.round()}',
          ),
          onChanged: (RangeValues values) {
            widget.onSelected?.call(values);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${widget.priceRange.start.round()}',
                style: theme.bodySmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.primary,
                ),
              ),
              Text(
                '\$${widget.priceRange.end.round()}',
                style: theme.bodySmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
