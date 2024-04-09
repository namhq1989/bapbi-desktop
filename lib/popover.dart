import 'package:flutter/material.dart';

void showAppPopover({
  required BuildContext context,
  required GlobalKey anchorKey,
  required Widget content,
  double width = 200,
  double height = 100,
  Color? backgroundColor,
  double? padding,
  required VoidCallback onClose,
}) {
  // Declare the overlay entry variable
  OverlayEntry? overlayEntry;

  // Define a function to remove the overlay entry
  void closePopover() {
    overlayEntry?.remove();
    onClose();
  }

  // Now define the overlay entry
  overlayEntry = OverlayEntry(
    builder: (context) => Stack(
      children: [
        // Close popover when tapping outside
        Positioned.fill(
          child: GestureDetector(
            onTap: () => closePopover(),
            behavior: HitTestBehavior.translucent,
            child: Container(color: Colors.transparent),
          ),
        ),
        // Calculate the anchor widget's position and size
        Builder(
          builder: (context) {
            final RenderBox anchorBox =
                anchorKey.currentContext?.findRenderObject() as RenderBox;
            final anchorSize = anchorBox.size;
            final anchorOffset = anchorBox.localToGlobal(Offset.zero);
            final screenWidth = MediaQuery.of(context).size.width;

            // Calculate available space and position
            final spaceOnRight =
                screenWidth - (anchorOffset.dx + anchorSize.width);
            final bool renderLTR = spaceOnRight >= width;
            final popoverX = renderLTR
                ? anchorOffset.dx
                : anchorOffset.dx + anchorSize.width - width;
            final popoverY =
                anchorOffset.dy + anchorSize.height + 5; // Adjust as needed

            return Positioned(
              left: popoverX,
              top: popoverY,
              child: Material(
                elevation: 8.0,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: width,
                  height: height,
                  padding: EdgeInsets.all(padding ?? 8.0),
                  decoration: BoxDecoration(
                    color: backgroundColor ??
                        Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: content,
                ),
              ),
            );
          },
        ),
      ],
    ),
  );

  // Insert the overlay entry into the Overlay
  Overlay.of(context).insert(overlayEntry);
}
