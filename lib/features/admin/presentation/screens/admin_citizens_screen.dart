import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_empty_state.dart';
import '../../../../core/widgets/app_skeleton.dart';
import '../../../profile/data/dto/citizen_data.dart';
import '../providers/admin_providers.dart';

class AdminCitizensScreen extends ConsumerStatefulWidget {
  const AdminCitizensScreen({super.key});

  @override
  ConsumerState<AdminCitizensScreen> createState() => _AdminCitizensScreenState();
}

class _AdminCitizensScreenState extends ConsumerState<AdminCitizensScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final citizensAsync = ref.watch(adminCitizensProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Data Warga KK',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: TextField(
                controller: _searchController,
                onChanged: (val) {
                  setState(() {
                    _searchQuery = val.trim().toLowerCase();
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Cari nama kepala keluarga atau No. KK...',
                  hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                  prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, size: 18),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _searchQuery = '';
                            });
                          },
                        )
                      : null,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
                  ),
                ),
              ),
            ),
            // Content
            Expanded(
              child: RefreshIndicator(
                color: AppColors.primary,
                onRefresh: () async {
                  ref.invalidate(adminCitizensProvider);
                  await ref.read(adminCitizensProvider.future);
                },
                child: citizensAsync.when(
                  loading: () => AppSkeleton.list(itemCount: 4),
                  error: (err, _) => _buildErrorState(context, err),
                  data: (citizens) {
                    final filtered = citizens.where((c) {
                      if (_searchQuery.isEmpty) return true;
                      final kkMatch = c.szCardId.toLowerCase().contains(_searchQuery);
                      final nameMatch = c.citizenInfo?.szName.toLowerCase().contains(_searchQuery) ?? false;
                      return kkMatch || nameMatch;
                    }).toList();

                    if (filtered.isEmpty) {
                      return AppEmptyState(
                        icon: Icons.people_outline,
                        title: _searchQuery.isEmpty
                            ? 'Belum Ada Data Warga'
                            : 'Warga Tidak Ditemukan',
                        subtitle: _searchQuery.isEmpty
                            ? 'Data warga Kartu Keluarga akan ditampilkan di sini.'
                            : 'Tidak ditemukan warga dengan kata kunci "$_searchQuery"',
                      );
                    }

                    return ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      padding: const EdgeInsets.all(16),
                      itemCount: filtered.length,
                      separatorBuilder: (context, index) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final citizen = filtered[index];
                        return _buildCitizenCard(context, citizen);
                      },
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

  Widget _buildErrorState(BuildContext context, Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppColors.error),
            const SizedBox(height: 16),
            Text(
              'Gagal Memuat Data Warga',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              error.toString().replaceFirst('Exception: ', ''),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => ref.invalidate(adminCitizensProvider),
              icon: const Icon(Icons.refresh),
              label: const Text('Coba Lagi'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCitizenCard(BuildContext context, CitizenData citizen) {
    final info = citizen.citizenInfo;

    return InkWell(
      onTap: () => _showCitizenDetail(context, citizen),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primaryLight.withValues(alpha: 0.25),
              child: const Icon(Icons.family_restroom, color: AppColors.primaryDark),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info?.szName ?? 'Kepala Keluarga',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'No. KK: ${citizen.szCardId}',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                  if (info?.szPhoneNo != null && info!.szPhoneNo!.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      'HP: ${info.szPhoneNo}',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 11),
                    ),
                  ],
                ],
              ),
            ),
            if (info?.szDescription != null && info!.szDescription!.isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primaryLight.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  info.szDescription!,
                  style: const TextStyle(
                    color: AppColors.primaryDark,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showCitizenDetail(BuildContext context, CitizenData citizen) {
    final info = citizen.citizenInfo;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Rincian Kartu Keluarga',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(height: 24),
              _buildDetailRow('Nomor Kartu Keluarga (KK)', citizen.szCardId),
              const SizedBox(height: 10),
              _buildDetailRow('Kepala Keluarga', info?.szName ?? '-'),
              const SizedBox(height: 10),
              _buildDetailRow('NIK Kepala Keluarga', info?.szCardId ?? '-'),
              const SizedBox(height: 10),
              _buildDetailRow('No. Handphone', info?.szPhoneNo ?? '-'),
              const SizedBox(height: 10),
              _buildDetailRow('Email', info?.szEmail ?? '-'),
              if (info?.szDescription != null && info!.szDescription!.isNotEmpty) ...[
                const SizedBox(height: 10),
                _buildDetailRow('Jabatan / Status', info.szDescription!),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: AppColors.textSecondary, fontSize: 13)),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
