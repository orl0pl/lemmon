import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lemmy_api_client/lemmy_api_client.dart';

import 'bottom_modal.dart';

class PostListOptions extends HookWidget {
  final void Function(SortType sort) onChange;
  final SortType defaultSort;

  PostListOptions({
    @required this.onChange,
    this.defaultSort = SortType.active,
  });

  @override
  Widget build(BuildContext context) {
    final sort = useState(defaultSort);

    void selectSortType(BuildContext context) {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => BottomModal(
            title: 'sort by',
            child: Column(
              children: [
                for (final x in SortType.values)
                  RadioListTile<SortType>(
                    value: x,
                    groupValue: sort.value,
                    // TODO: use something more robust and user-friendly
                    //       than describeEnum
                    title: Text(describeEnum(x)),
                    onChanged: (val) {
                      sort.value = val;
                      onChange(val);
                      Navigator.of(context).pop();
                    },
                  ),
              ],
            )),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          OutlineButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () => selectSortType(context),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(describeEnum(sort.value)),
                const SizedBox(width: 8),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.view_stream),
            onPressed: () => print('TBD'),
          )
        ],
      ),
    );
  }
}