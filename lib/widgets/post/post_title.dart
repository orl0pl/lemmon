import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/stores.dart';
import '../../stores/accounts_store.dart';
import '../../stores/config_store.dart';
import '../../util/extensions/api.dart';
import '../../util/observer_consumers.dart';
import 'post_store.dart';

import 'package:shared_preferences/shared_preferences.dart';

class PostTitle extends HookWidget {
  const PostTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final configStore = useStore((ConfigStore store) => store);
    return ObserverBuilder<PostStore>(
      builder: (context, store) {
        final post = store.postView.post;
        
        return Padding(
          padding: const EdgeInsets.all(10).copyWith(top: 0, bottom: 5),
          child: Row(
            children: [
              
              Expanded(
                child: Text(
                  post.name,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: configStore.titleFontSize,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
