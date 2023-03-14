import 'package:alo_simulator/providers/app_data.dart';
import 'package:alo_simulator/styles/alo_paddings.dart';
import 'package:alo_simulator/widgets/alocattion_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllocationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<AppData>(
        builder: (context, appData, child) => ListView.builder(
          shrinkWrap: true,
          padding: AloPaddings.page,
          itemCount: appData.allocations.length,
          itemBuilder: (context, index) {
            var allocation = appData.allocations.elementAt(index);
            var title = allocation.title;
            return Dismissible(
                key: Key(index.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  print('Dismissed with direction $direction');
                },
                confirmDismiss: (DismissDirection direction) async {
                  final confirmed = await showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title:
                            Text('Você tem certeza que quer excluir $title?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: const Text('Não'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: const Text('Sim'),
                          )
                        ],
                      );
                    },
                  );
                  print('Deletion confirmed: $confirmed');
                  return confirmed;
                },
                background: Container(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                child: AllocationCard(
                  data: allocation,
                  gap: !(index == appData.allocations.length - 1) ? 16 : 0,
                  onPressed: () {
                    var selected = appData.allocations.elementAt(index);
                    print(selected.title);
                  },
                ));
          },
        ),
      ),
    );
  }
}
