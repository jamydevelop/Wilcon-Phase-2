import 'package:flutter/material.dart';
import 'package:wilcon_phase2/module/checklist/checklist_summary/presentation/checklist_summary_page.dart';

class HomepageCardWidget extends StatefulWidget {
  final String mainTitle;
  final String subTitle;
  final List<String> rowTitles;
  final List<String> rowContents;

  const HomepageCardWidget({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.rowTitles,
    required this.rowContents,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HomepageCardWidgetState createState() => _HomepageCardWidgetState();
}

class _HomepageCardWidgetState extends State<HomepageCardWidget> {
  bool _isExpanded = true;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  BoxDecoration _getTextDecoration(int index) {
    if (index == 2) {
      if (widget.rowContents[index] == "Acknowledge") {
        return BoxDecoration(
          color: const Color(0xFFD4F4EC),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      } else if (widget.rowContents[index] == "For checking of inspector") {
        return BoxDecoration(
          color: const Color(0xFFFFEECC),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      } else if (widget.rowContents[index] == "Not Validated") {
        return BoxDecoration(
          color: const Color(0xFFFDDDD3),
          borderRadius: BorderRadius.circular(30), // 30px border radius
        );
      }
    }
    return const BoxDecoration(); // Default (no background change)
  }

  TextStyle _getTextStyle(int index) {
    if (index == 2) {
      if (widget.rowContents[index] == "Acknowledge") {
        return const TextStyle(color: Color(0xFF10513F));
      } else if (widget.rowContents[index] == "For checking of inspector") {
        return const TextStyle(color: Color(0xFF663000));
      } else if (widget.rowContents[index] == "Not Validated") {
        return const TextStyle(color: Color(0xFF61220F));
      }
    }
    return const TextStyle(color: Colors.black87); // Default text color
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with arrow icon
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Color(0xFF15422B), // Header background color
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.mainTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                        width: 8), // Spacing between text and subTitle badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color:
                            const Color(0xFFD4F4EC), // Updated background color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        widget.subTitle,
                        style: const TextStyle(
                          color: Color(0xFF10513F), // Updated text color
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: const Color(0xFFDCB40D), // Arrow icon color
                  ),
                  onPressed: _toggleExpansion,
                ),
              ],
            ),
          ),
          // Body content with alternating colors
          if (_isExpanded)
            Column(
              children: [
                ...List.generate(
                  widget.rowTitles.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.white : Colors.grey[200]!,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.rowTitles[index],
                          style: const TextStyle(color: Colors.black87),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: _getTextDecoration(index),
                          child: Text(
                            widget.rowContents[index],
                            style: _getTextStyle(index),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // View Details Button
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0), // 12px margin on all sides
                  child: SizedBox(
                    width: double.infinity, // Full width
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChecklistSummaryPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green.shade900,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.green.shade900),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View Details'),
                          SizedBox(width: 8), // Spacing between text and icon
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
