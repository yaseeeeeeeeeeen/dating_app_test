import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  final VoidCallback onClose;

  const FilterBar({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFilterItem(Icons.verified, "Verified profile", Colors.green),
          _divider(),
          _buildFilterItem(
            Icons.access_time_filled,
            "Verification pending",
            Colors.grey,
          ),
          _closeButton(),
        ],
      ),
    );
  }

  Widget _buildFilterItem(IconData icon, String text, Color iconColor) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 18),
        SizedBox(width: 6),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      height: 20,
      width: 1,
      color: Colors.grey.shade400,
      margin: EdgeInsets.symmetric(horizontal: 8),
    );
  }

  Widget _closeButton() {
    return GestureDetector(
      onTap: onClose,
      child: Icon(Icons.close, color: Colors.black54, size: 20),
    );
  }
}
