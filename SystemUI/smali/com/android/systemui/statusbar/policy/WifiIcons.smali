.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_ACTIVITY_VZW:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v10, 0x7f08052b

    const v9, 0x7f08052a

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f080760

    const v2, 0x7f080761

    const v3, 0x7f080762

    const v4, 0x7f080763

    const v5, 0x7f080764

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v11, 0x1

    const-string/jumbo v12, "switch_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const v13, 0x1

    if-eq v12, v13, :cond_b

    const v13, 0x2

    if-eq v12, v13, :cond_0

    const v13, 0x3

    if-eq v12, v13, :cond_1

    const v13, 0x4

    if-eq v12, v13, :cond_2

    const v13, 0x5

    if-eq v12, v13, :cond_3

    const v13, 0x6

    if-eq v12, v13, :cond_4

    const v13, 0x7

    if-eq v12, v13, :cond_5

    const v13, 0x8

    if-eq v12, v13, :cond_6

    const v13, 0x9

    if-eq v12, v13, :cond_7

    const v13, 0xa

    if-eq v12, v13, :cond_8

    const v13, 0xb

    if-eq v12, v13, :cond_9

    const v13, 0xc

    if-eq v12, v13, :cond_a

    :cond_0
    const-string/jumbo v11, "stat_sys_wifi_signal_0_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v11, "stat_sys_wifi_signal_0_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v11, "stat_sys_wifi_signal_0_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v11, "stat_sys_wifi_signal_0_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v11, "stat_sys_wifi_signal_06"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v11, "stat_sys_wifi_signal_0_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v11, "stat_sys_wifi_signal_0_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v11, "stat_sys_wifi_signal_0_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "stat_sys_wifi_signal_0_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_9
    const-string/jumbo v11, "stat_sys_wifi_signal_0_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_a
    const-string/jumbo v11, "stat_sys_wifi_signal_0_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v11, "stat_sys_wifi_signal_1_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v11, "stat_sys_wifi_signal_2_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v11, "stat_sys_wifi_signal_3_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "stat_sys_wifi_signal_4_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_b
    const v1, 0x7f08076d

    const v2, 0x7f080770

    const v3, 0x7f080773

    const v4, 0x7f080776

    const v5, 0x7f080779

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080765

    const v2, 0x7f080766

    const v3, 0x7f080767

    const v4, 0x7f080768

    const v5, 0x7f080769

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08076e

    const v2, 0x7f080771

    const v3, 0x7f080774

    const v4, 0x7f080777

    const v5, 0x7f08077a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08075b

    const v2, 0x7f08075c

    const v3, 0x7f08075d

    const v4, 0x7f08075e

    const v5, 0x7f08075f

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08075b

    const v2, 0x7f08075c

    const v3, 0x7f08075d

    const v4, 0x7f08075e

    const v5, 0x7f08075f

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08053e

    const v2, 0x7f08053f

    const v3, 0x7f080540

    const v4, 0x7f080541

    const v5, 0x7f080542

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08053e

    const v2, 0x7f08053f

    const v3, 0x7f080540

    const v4, 0x7f080541

    const v5, 0x7f080542

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08052c

    const v2, 0x7f08052d

    const v3, 0x7f08052e

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08052c

    const v2, 0x7f08052d

    const v3, 0x7f08052e

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08067a

    const v2, 0x7f08067b

    const v3, 0x7f08067c

    const v4, 0x7f08067d

    const v5, 0x7f08067e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080675

    const v2, 0x7f080676

    const v3, 0x7f080677

    const v4, 0x7f080678

    const v5, 0x7f080679

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080787

    const v2, 0x7f080788

    const v3, 0x7f080789

    const v4, 0x7f08078a

    const v5, 0x7f08078b

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080787

    const v2, 0x7f080788

    const v3, 0x7f080789

    const v4, 0x7f08078a

    const v5, 0x7f08078b

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f08077e

    const v2, 0x7f08077f

    const v3, 0x7f080780

    const v4, 0x7f080781

    const v5, 0x7f080782

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f08077e

    const v2, 0x7f08077f

    const v3, 0x7f080780

    const v4, 0x7f080781

    const v5, 0x7f080782

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f080760

    const v2, 0x7f080761

    const v3, 0x7f080762

    const v4, 0x7f080763

    const v5, 0x7f080764

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080793

    const v2, 0x7f080794

    const v3, 0x7f080795

    const v4, 0x7f080796

    const v5, 0x7f080797

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    const/4 v11, 0x1

    const-string/jumbo v12, "arrow_wifi"

    invoke-static {v12, v11}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const v13, 0x1

    if-eq v12, v13, :cond_d

    const v13, 0x2

    if-eq v12, v13, :cond_c

    :cond_c
    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "no_arrows"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_d
    const v0, 0x7f080790

    const v1, 0x7f08077c

    const v2, 0x7f080792

    const v3, 0x7f08077d

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f08078e

    const v1, 0x7f08078c

    const v2, 0x7f08078f

    const v3, 0x7f08078d

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f080785

    const v1, 0x7f080783

    const v2, 0x7f080786

    const v3, 0x7f080784

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    const v0, 0x7f080723

    const v1, 0x7f080713

    const v2, 0x7f08072b

    const v3, 0x7f08071c

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_VZW:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
