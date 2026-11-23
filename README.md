# ewan

dart run easy_localization:generate -S assets/translations -O lib/generated -o locale_keys.g.dart -f keys    

dart run easy_localization:generate -S assets/translations -O lib/generated  

dart run build_runner build

flutter build apk --release


