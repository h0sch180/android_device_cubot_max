# Use this to add Max to CM's lunch command menu
for var in eng user userdebug; do
  add_lunch_combo lineage_MAX-$var
  add_lunch_combo viper_MAX-$var
done
