import 'package:flutter/material.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';

class _DropdownDialog<T> extends StatefulWidget {
  const _DropdownDialog({
    required this.items,
    required this.title,
    this.selectedValues,
    required this.onChanged,
    this.displayValueMapper,
    super.key,
  });

  final List<DropdownItem<T>> items;
  final T? selectedValues;
  final String title;
  final ValueChanged<T?> onChanged;
  /// Custom display mapper for complex objects
  final String Function(T)? displayValueMapper;

  @override
  State<_DropdownDialog<T>> createState() => _DropdownDialogState<T>();
}

class _DropdownDialogState<T> extends State<_DropdownDialog<T>> {
  T? _tempSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              ),
              padding: EdgeInsets.only(
                left: ResponsiveUtils.getResponsiveSpacing(context, 10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      widget.title,
                      baseFontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      FocusScope.of(context).unfocus();
                    },
                    icon: Icon(
                      Icons.close,
                      size: ResponsiveUtils.getResponsiveFontSize(context, 18),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                child: ListView.builder(
                  itemCount: widget.items.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = widget.items[index];
                    return RadioListTile<T>(
                      value: item.value,
                      groupValue: _tempSelectedValue,
                      onChanged: (T? value) {
                        setState(() {
                          _tempSelectedValue = value;
                        });
                        widget.onChanged(value);
                      },
                      title: ResponsiveText(item.label, baseFontSize: 16),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Model class for dropdown items
class DropdownItem<T> {
  const DropdownItem({
    required this.value,
    required this.label,
    this.subtitle,
    this.icon,
  });

  /// The value associated with this item
  final T value;

  /// The display text for this item
  final String label;

  /// Optional subtitle text
  final String? subtitle;

  /// Optional leading icon
  final Widget? icon;
}