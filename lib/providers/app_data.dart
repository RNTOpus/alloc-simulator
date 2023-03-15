import 'package:alo_simulator/mock/allocations_mock.dart';
import 'package:alo_simulator/models/allocation.dart';
import 'package:alo_simulator/models/user.dart';
import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  var username = '';
  var password = '';

  final List<Allocation> allocations = AllocationsMock().mockList;

  Allocation? findAllocation(String allocationId) {
    for (Allocation allocation in allocations) {
      if (allocation.id == allocationId) {
        return allocation;
      }
    }
    return null;
  }

  void addAllocation(Allocation allocation) {
    allocations.add(allocation);
    notifyListeners();
  }

  void insertAllocation(Allocation allocation, int index) {
    allocations.insert(index, allocation);
    notifyListeners();
  }

  void removeAllocation(Allocation allocation) {
    allocations.remove(allocation);
    notifyListeners();
  }

  void addCollaboratorInAllocation(String allocationId, User collaborator) {
    var allocation = findAllocation(allocationId);
    if (allocation != null) {
      allocation.collaborators.add(collaborator);
      notifyListeners();
    }
  }

  void insertCollaboratorInAllocation(
      String allocationId, User collaborator, int index) {
    var allocation = findAllocation(allocationId);
    if (allocation != null) {
      allocation.collaborators.insert(index, collaborator);
      notifyListeners();
    }
  }

  void removeCollaboratorInAllocation(String allocationId, User collaborator) {
    var allocation = findAllocation(allocationId);
    if (allocation != null) {
      allocation.collaborators.remove(collaborator);
      notifyListeners();
    }
  }
}
