# function rubik_cube_3:cube_function/give_items

#放置与删除
give @s paper[item_model=prismarine,enchantment_glint_override=true,custom_name=[{text:"放置/删除魔方",color:"light_purple",italic:false}],lore=[\
    [{keybind:"key.use",color:"gray",italic:false},{text:"(长按)放置魔方，可拖动选择位置",color:"gray",italic:false}], \
    [{keybind:"key.attack",color:"gray",italic:false},{text:"打掉魔方",color:"gray",italic:false}], \
    "", \
    [{text:"放于副手并按下",color:"gray",italic:false},{keybind:"key.sneak",color:"gray",italic:false},{text:"，清理周围三格内的魔方",color:"gray",italic:false}] \
    \
    ],custom_data={is_rubik_cube_item:true,rubik_cube_function:"set"},consumable={consume_seconds:20733f,has_consume_particles:false,animation:"block"},max_stack_size=1]

#复原与打乱魔方
give @s paper[item_model=yellow_shulker_box,enchantment_glint_override=true,custom_name=[{text:"复原/打乱魔方",color:"yellow",italic:false}],lore=[\
    [{keybind:"key.use",color:"gray",italic:false},{text:"复原魔方",color:"gray",italic:false}], \
    [{keybind:"key.attack",color:"gray",italic:false},{text:"打乱魔方",color:"gray",italic:false}] \
    \
    ],custom_data={is_rubik_cube_item:true,rubik_cube_function:"solve"},max_stack_size=1]

#录制旋转动作
give @s paper[item_model=ender_pearl,enchantment_glint_override=true,custom_name=[{text:"录制魔方旋转动作",color:"blue",italic:false}],lore=[\
    [{keybind:"key.use",color:"gray",italic:false},{text:"开始录制",color:"gray",italic:false}], \
    \
    ],custom_data={is_rubik_cube_item:true,rubik_cube_function:"export_formula"},max_stack_size=1]
