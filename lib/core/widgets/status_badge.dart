import 'package:flutter/material.dart';

enum StatusBadgeType {
  success,
  danger,
  warning,
  info,
  neutral,
}

class StatusBadge extends StatelessWidget {
  final String label;
  final StatusBadgeType type;
  final IconData? icon;
  final bool isCompact;

  const StatusBadge({
    super.key,
    required this.label,
    this.type = StatusBadgeType.neutral,
    this.icon,
    this.isCompact = false,
  });

  factory StatusBadge.lunas({Key? key, String label = 'Lunas'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.success,
      icon: Icons.check_circle_outline_rounded,
    );
  }

  factory StatusBadge.belumLunas({Key? key, String label = 'Belum Lunas'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.danger,
      icon: Icons.access_time_rounded,
    );
  }

  factory StatusBadge.aktif({Key? key, String label = 'Aktif'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.success,
      icon: Icons.check_rounded,
      isCompact: true,
    );
  }

  factory StatusBadge.nonaktif({Key? key, String label = 'Nonaktif'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.neutral,
      icon: Icons.pause_rounded,
      isCompact: true,
    );
  }

  factory StatusBadge.inflow({Key? key, String label = 'Masuk'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.success,
      icon: Icons.arrow_downward_rounded,
      isCompact: true,
    );
  }

  factory StatusBadge.outflow({Key? key, String label = 'Keluar'}) {
    return StatusBadge(
      key: key,
      label: label,
      type: StatusBadgeType.danger,
      icon: Icons.arrow_upward_rounded,
      isCompact: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final (Color bgColor, Color fgColor, Color borderColor) = switch (type) {
      StatusBadgeType.success => (
          const Color(0xFFECFDF5), // Emerald 50
          const Color(0xFF065F46), // Emerald 800 - high contrast
          const Color(0xFFA7F3D0), // Emerald 200
        ),
      StatusBadgeType.danger => (
          const Color(0xFFFEF2F2), // Red 50
          const Color(0xFF991B1B), // Red 800 - high contrast
          const Color(0xFFFECACA), // Red 200
        ),
      StatusBadgeType.warning => (
          const Color(0xFFFFFBEB), // Amber 50
          const Color(0xFF92400E), // Amber 800 - high contrast
          const Color(0xFFFDE68A), // Amber 200
        ),
      StatusBadgeType.info => (
          const Color(0xFFEFF6FF), // Blue 50
          const Color(0xFF1E40AF), // Blue 800 - high contrast
          const Color(0xFFBFDBFE), // Blue 200
        ),
      StatusBadgeType.neutral => (
          const Color(0xFFF1F5F9), // Slate 100
          const Color(0xFF334155), // Slate 700
          const Color(0xFFCBD5E1), // Slate 300
        ),
    };

    final horizontalPadding = isCompact ? 8.0 : 12.0;
    final verticalPadding = isCompact ? 4.0 : 6.0;
    final fontSize = isCompact ? 11.0 : 12.0;
    final iconSize = isCompact ? 13.0 : 15.0;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: iconSize, color: fgColor),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              color: fgColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
