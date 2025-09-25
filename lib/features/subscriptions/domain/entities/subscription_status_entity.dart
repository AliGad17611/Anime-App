import 'package:equatable/equatable.dart';

class SubscriptionStatusEntity extends Equatable {
  final bool isSubscribed;
  final String? currentPlanId;
  final String? currentPlanName;
  final DateTime? expiryDate;
  final bool isActive;

  const SubscriptionStatusEntity({
    required this.isSubscribed,
    this.currentPlanId,
    this.currentPlanName,
    this.expiryDate,
    required this.isActive,
  });

  SubscriptionStatusEntity copyWith({
    bool? isSubscribed,
    String? currentPlanId,
    String? currentPlanName,
    DateTime? expiryDate,
    bool? isActive,
  }) {
    return SubscriptionStatusEntity(
      isSubscribed: isSubscribed ?? this.isSubscribed,
      currentPlanId: currentPlanId ?? this.currentPlanId,
      currentPlanName: currentPlanName ?? this.currentPlanName,
      expiryDate: expiryDate ?? this.expiryDate,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  List<Object?> get props => [
    isSubscribed,
    currentPlanId,
    currentPlanName,
    expiryDate,
    isActive,
  ];
}
