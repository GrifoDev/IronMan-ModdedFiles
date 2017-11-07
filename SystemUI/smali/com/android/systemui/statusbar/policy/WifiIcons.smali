.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_DEFAULT_SEP_8:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_ACTIVITY_VZW:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final WIFI_SIGNAL_STRENGTH_SEP_8:[[I

.field static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v10, 0x7f02077c

    const v9, 0x7f02077b

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [[I

    const v1, 0x7f02077d

    const v2, 0x7f02077e

    const v3, 0x7f02077f

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v11, 0x1

    const-string v12, "switch_wifi"

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
    const-string v11, "stat_sys_wifi_signal_0_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_2"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_1
    const-string v11, "stat_sys_wifi_signal_0_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_3"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string v11, "stat_sys_wifi_signal_0_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_4"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_3
    const-string v11, "stat_sys_wifi_signal_0_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_5"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const-string v11, "stat_sys_wifi_signal_06"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_6"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    const-string v11, "stat_sys_wifi_signal_0_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_7"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_6
    const-string v11, "stat_sys_wifi_signal_0_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_8"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    const-string v11, "stat_sys_wifi_signal_0_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_9"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const-string v11, "stat_sys_wifi_signal_0_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_10"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_9
    const-string v11, "stat_sys_wifi_signal_0_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_11"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_a
    const-string v11, "stat_sys_wifi_signal_0_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v11, "stat_sys_wifi_signal_1_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v11, "stat_sys_wifi_signal_2_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v11, "stat_sys_wifi_signal_3_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v11, "stat_sys_wifi_signal_4_12"

    const-string v12, "drawable"

    invoke-static {v11, v12}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_b
    const v1, 0x7f020785

    const v2, 0x7f020788

    const v3, 0x7f02078b

    const v4, 0x7f02078e

    const v5, 0x7f020791

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f02077d

    const v2, 0x7f02077e

    const v3, 0x7f02077f

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020787

    const v2, 0x7f02078a

    const v3, 0x7f02078d

    const v4, 0x7f020790

    const v5, 0x7f020793

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_SEP_8:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020780

    const v2, 0x7f020781

    const v3, 0x7f020782

    const v4, 0x7f020783

    const v5, 0x7f020784

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020786

    const v2, 0x7f020789

    const v3, 0x7f02078c

    const v4, 0x7f02078f

    const v5, 0x7f020792

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020776

    const v2, 0x7f020777

    const v3, 0x7f020778

    const v4, 0x7f020779

    const v5, 0x7f02077a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020776

    const v2, 0x7f020777

    const v3, 0x7f020778

    const v4, 0x7f020779

    const v5, 0x7f02077a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020478

    const v2, 0x7f020479

    const v3, 0x7f02047a

    const v4, 0x7f02047b

    const v5, 0x7f02047c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020478

    const v2, 0x7f020479

    const v3, 0x7f02047a

    const v4, 0x7f02047b

    const v5, 0x7f02047c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020462

    const v2, 0x7f020463

    const v3, 0x7f020464

    const v4, 0x7f020465

    const v5, 0x7f020466

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020462

    const v2, 0x7f020463

    const v3, 0x7f020464

    const v4, 0x7f020465

    const v5, 0x7f020466

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_SECURE:[[I

    new-array v0, v8, [[I

    const v1, 0x7f0206a5

    const v2, 0x7f0206a6

    const v3, 0x7f0206a7

    const v4, 0x7f0206a8

    const v5, 0x7f0206a9

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0206a0

    const v2, 0x7f0206a1

    const v3, 0x7f0206a2

    const v4, 0x7f0206a3

    const v5, 0x7f0206a4

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v8, [[I

    const v1, 0x7f02079f

    const v2, 0x7f0207a0

    const v3, 0x7f0207a1

    const v4, 0x7f0207a2

    const v5, 0x7f0207a3

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f02079f

    const v2, 0x7f0207a0

    const v3, 0x7f0207a1

    const v4, 0x7f0207a2

    const v5, 0x7f0207a3

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f020796

    const v2, 0x7f020797

    const v3, 0x7f020798

    const v4, 0x7f020799

    const v5, 0x7f02079a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020796

    const v2, 0x7f020797

    const v3, 0x7f020798

    const v4, 0x7f020799

    const v5, 0x7f02079a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v0, v8, [[I

    const v1, 0x7f02077d

    const v2, 0x7f02077e

    const v3, 0x7f02077f

    filled-new-array {v9, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0207ab

    const v2, 0x7f0207ac

    const v3, 0x7f0207ad

    const v4, 0x7f0207ae

    const v5, 0x7f0207af

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    const/4 v11, 0x1

    const-string v12, "arrow_wifi"

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
    const v0, 0x7f0207a8

    const v1, 0x7f020794

    const v2, 0x7f0207aa

    const v3, 0x7f020795

    :goto_1
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    const v0, 0x7f020745

    const v1, 0x7f020737

    const v2, 0x7f02074c

    const v3, 0x7f02073f

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT_SEP_8:[I

    const v0, 0x7f0207a6

    const v1, 0x7f0207a4

    const v2, 0x7f0207a7

    const v3, 0x7f0207a5

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    const v0, 0x7f02079d

    const v1, 0x7f02079b

    const v2, 0x7f02079e

    const v3, 0x7f02079c

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    const v0, 0x7f020745

    const v1, 0x7f020737

    const v2, 0x7f02074c

    const v3, 0x7f02073f

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
