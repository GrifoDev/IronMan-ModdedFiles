.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_PLUS:[[I

.field static final DATA_ACTIVITY_ATT:[I

.field static final DATA_ACTIVITY_DEFAULT:[I

.field static final DATA_ACTIVITY_LTE_PLUS:[I

.field static final DATA_ACTIVITY_LTE_PLUS_KT:[I

.field static final DATA_ACTIVITY_TMO:[I

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field public static final PreferredSimIcon:[I

.field static final QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_5_LEVEL_CARRIER_NETWORK_CHANGE:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH:[I

.field static final TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonyNoServiceIcon()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v7, 0x1

    const-string v8, "switch_signal"

    invoke-static {v8, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_11

    const v9, 0x1

    if-eq v8, v9, :cond_11

    const v9, 0x2

    if-eq v8, v9, :cond_0

    const v9, 0x3

    if-eq v8, v9, :cond_1

    const v9, 0x4

    if-eq v8, v9, :cond_2

    const v9, 0x5

    if-eq v8, v9, :cond_3

    const v9, 0x6

    if-eq v8, v9, :cond_4

    const v9, 0x7

    if-eq v8, v9, :cond_5

    const v9, 0x8

    if-eq v8, v9, :cond_6

    const v9, 0x9

    if-eq v8, v9, :cond_7

    const v9, 0xa

    if-eq v8, v9, :cond_8

    const v9, 0xb

    if-eq v8, v9, :cond_9

    const v9, 0xc

    if-eq v8, v9, :cond_a

    const v9, 0xd

    if-eq v8, v9, :cond_b

    const v9, 0xe

    if-eq v8, v9, :cond_c

    const v9, 0xf

    if-eq v8, v9, :cond_d

    const v9, 0x10

    if-eq v8, v9, :cond_e

    const v9, 0x11

    if-eq v8, v9, :cond_f

    const v9, 0x12

    if-eq v8, v9, :cond_10

    :cond_0
    const-string v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_1
    const-string v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_3
    const-string v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    const-string v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    const-string v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_6
    const-string v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    const-string v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const-string v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_9
    const-string v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_a
    const-string v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_b
    const-string v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_c
    const-string v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_d
    const-string v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_e
    const-string v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_f
    const-string v7, "stat_sys_signal_0_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_10
    const-string v7, "stat_sys_signal_0_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_11
    const v1, 0x7f0206ba

    const v2, 0x7f0206bd

    const v3, 0x7f0206c0

    const v4, 0x7f0206c3

    const v5, 0x7f0206c6

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0206ba

    const v2, 0x7f0206bd

    const v3, 0x7f0206c0

    const v4, 0x7f0206c3

    const v5, 0x7f0206c6

    :goto_0
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v7, 0x1

    const-string v8, "switch_signal_sim2"

    invoke-static {v8, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_23

    const v9, 0x1

    if-eq v8, v9, :cond_23

    const v9, 0x2

    if-eq v8, v9, :cond_12

    const v9, 0x3

    if-eq v8, v9, :cond_13

    const v9, 0x4

    if-eq v8, v9, :cond_14

    const v9, 0x5

    if-eq v8, v9, :cond_15

    const v9, 0x6

    if-eq v8, v9, :cond_16

    const v9, 0x7

    if-eq v8, v9, :cond_17

    const v9, 0x8

    if-eq v8, v9, :cond_18

    const v9, 0x9

    if-eq v8, v9, :cond_19

    const v9, 0xa

    if-eq v8, v9, :cond_1a

    const v9, 0xb

    if-eq v8, v9, :cond_1b

    const v9, 0xc

    if-eq v8, v9, :cond_1c

    const v9, 0xd

    if-eq v8, v9, :cond_1d

    const v9, 0xe

    if-eq v8, v9, :cond_1e

    const v9, 0xf

    if-eq v8, v9, :cond_1f

    const v9, 0x10

    if-eq v8, v9, :cond_20

    const v9, 0x11

    if-eq v8, v9, :cond_21

    const v9, 0x12

    if-eq v8, v9, :cond_22

    :cond_12
    const-string v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_2_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_13
    const-string v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_3_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_14
    const-string v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_4_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_15
    const-string v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_5_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_16
    const-string v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_65_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_65_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_6_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_17
    const-string v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_7_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_18
    const-string v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_8_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_19
    const-string v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_9_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1a
    const-string v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_10_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1b
    const-string v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_11_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1c
    const-string v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_12_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1d
    const-string v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_13_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1e
    const-string v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_143_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_143_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_14_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_1f
    const-string v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_15_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_20
    const-string v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_16_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    :cond_21
    const-string v7, "stat_sys_signal_0_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_17_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_22
    const-string v7, "stat_sys_signal_0_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v7, "stat_sys_signal_0_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v7, "stat_sys_signal_1_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v7, "stat_sys_signal_2_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v7, "stat_sys_signal_3_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v7, "stat_sys_signal_4_18_auto_rotate"

    const-string v8, "drawable"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_23
    const v1, 0x7f02071f

    const v2, 0x7f020721

    const v3, 0x7f020723

    const v4, 0x7f020725

    const v5, 0x7f020727

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02071f

    const v2, 0x7f020721

    const v3, 0x7f020723

    const v4, 0x7f020725

    const v5, 0x7f020727

    :goto_1
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    const v0, 0x7f0206d6

    const v1, 0x7f0206d7

    const v2, 0x7f0206d8

    const v3, 0x7f0206d9

    const v4, 0x7f0206da

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020200

    const v2, 0x7f020201

    const v3, 0x7f020203

    const v4, 0x7f020204

    const v5, 0x7f020206

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02020d

    const v2, 0x7f02020e

    const v3, 0x7f02020f

    const v4, 0x7f020210

    const v5, 0x7f020211

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f0206ba

    const v2, 0x7f0206bd

    const v3, 0x7f0206c0

    const v4, 0x7f0206c3

    const v5, 0x7f0206c6

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0206ba

    const v2, 0x7f0206bd

    const v3, 0x7f0206c0

    const v4, 0x7f0206c3

    const v5, 0x7f0206c6

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f0206d5

    const v2, 0x7f0206d5

    const v3, 0x7f0206d5

    const v4, 0x7f0206d5

    const v5, 0x7f0206d5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0206d5

    const v2, 0x7f0206d5

    const v3, 0x7f0206d5

    const v4, 0x7f0206d5

    const v5, 0x7f0206d5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_CARRIER_NETWORK_CHANGE:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02020a

    const v2, 0x7f02020a

    const v3, 0x7f02020a

    const v4, 0x7f02020a

    const v5, 0x7f02020a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02020a

    const v2, 0x7f02020a

    const v3, 0x7f02020a

    const v4, 0x7f02020a

    const v5, 0x7f02020a

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02065e

    const v2, 0x7f02065e

    const v3, 0x7f02065e

    const v4, 0x7f02065e

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02065e

    const v2, 0x7f02065e

    const v3, 0x7f02065e

    const v4, 0x7f02065e

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020650

    const v2, 0x7f020650

    const v3, 0x7f020650

    const v4, 0x7f020650

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020650

    const v2, 0x7f020650

    const v3, 0x7f020650

    const v4, 0x7f020650

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02065d

    const v2, 0x7f02065d

    const v3, 0x7f02065d

    const v4, 0x7f02065d

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02065d

    const v2, 0x7f02065d

    const v3, 0x7f02065d

    const v4, 0x7f02065d

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02065f

    const v2, 0x7f02065f

    const v3, 0x7f02065f

    const v4, 0x7f02065f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02065f

    const v2, 0x7f02065f

    const v3, 0x7f02065f

    const v4, 0x7f02065f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f02064d

    const v2, 0x7f02064d

    const v3, 0x7f02064d

    const v4, 0x7f02064d

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f02064d

    const v2, 0x7f02064d

    const v3, 0x7f02064d

    const v4, 0x7f02064d

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020655

    const v2, 0x7f020655

    const v3, 0x7f020655

    const v4, 0x7f020655

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020655

    const v2, 0x7f020655

    const v3, 0x7f020655

    const v4, 0x7f020655

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020658

    const v2, 0x7f020658

    const v3, 0x7f020658

    const v4, 0x7f020658

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020658

    const v2, 0x7f020658

    const v3, 0x7f020658

    const v4, 0x7f020658

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x7f020661

    const v2, 0x7f020661

    const v3, 0x7f020661

    const v4, 0x7f020661

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f020661

    const v2, 0x7f020661

    const v3, 0x7f020661

    const v4, 0x7f020661

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonyCarrierNetworkChangeIcon()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0206d5

    const v8, 0x7f02020a

    const v10, 0x7f0f039d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038c

    const v11, 0x7f020650

    const/4 v12, 0x1

    const v13, 0x7f020205

    const v14, 0x7f020692

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "WFC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "Unknown"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f02069f

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "E"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0394

    const v11, 0x7f02065d

    const/4 v12, 0x0

    const v13, 0x7f02020c

    const v14, 0x7f020698

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "1X"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0392

    const v11, 0x7f02064d

    const/4 v12, 0x1

    const v13, 0x7f020202

    const v14, 0x7f020690

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0389

    const v11, 0x7f02065e

    const/4 v12, 0x0

    const v13, 0x7f020212

    const v14, 0x7f020699

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038d

    const v11, 0x7f02065f

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f02069a

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f020655

    const/4 v12, 0x1

    const v13, 0x7f020207

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G+"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038f

    const v11, 0x7f020658

    const/4 v12, 0x1

    const v13, 0x7f020208

    const v14, 0x7f020696

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020661

    const/4 v12, 0x1

    const v13, 0x7f020215

    const v14, 0x7f02069c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "Roaming"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0393

    const v11, 0x7f020667

    const/4 v12, 0x0

    const v13, 0x7f020219

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DataDisabled"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0399

    const v11, 0x7f02063c

    const/4 v12, 0x0

    const v13, 0x7f0201f2

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "H_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038d

    const v11, 0x7f020660

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f02069b

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "DC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038d

    const v11, 0x7f02065c

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020697

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_LTE_LTN"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020629

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020668

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f020656

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020662

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f02069c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038c

    const v11, 0x7f020653

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020692

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f020659

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_TMO"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020666

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f02069c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_VZW"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f02065b

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_USCC"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f02065a

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038c

    const v11, 0x7f020652

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020693

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0392

    const v11, 0x7f02064e

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020691

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4G_CU"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f020657

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020695

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_Plus"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020664

    const/4 v12, 0x1

    const v13, 0x7f020216

    const v14, 0x7f02069e

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "2G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0389

    const v11, 0x7f02064f

    const/4 v12, 0x0

    const v13, 0x7f020212

    const v14, 0x7f020699

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "3G_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038c

    const v11, 0x7f020651

    const/4 v12, 0x0

    const v13, 0x7f020213

    const v14, 0x7f020692

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020663

    const/4 v12, 0x0

    const v13, 0x7f020215

    const v14, 0x7f02069c

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "LTE_Plus_KT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f0390

    const v11, 0x7f020665

    const/4 v12, 0x1

    const v13, 0x7f020215

    const v14, 0x7f02069e

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v1, "4.5G"

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrength()[[I

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalContentDesc()[I

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f020217

    const v10, 0x7f0f038e

    const v11, 0x7f020654

    const/4 v12, 0x1

    const v13, 0x7f020207

    const v14, 0x7f020694

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const v0, 0x7f020745

    const v1, 0x7f020737

    const v2, 0x7f02074c

    const v3, 0x7f02073f

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    const/4 v0, 0x0

    const v1, 0x7f020738

    const v2, 0x7f02074d

    const v3, 0x7f020740

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    const v0, 0x7f020748

    const v1, 0x7f02073e

    const v2, 0x7f020753

    const v3, 0x7f020743

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    const v0, 0x7f020746

    const v1, 0x7f02073c

    const v2, 0x7f020751

    const v3, 0x7f020741

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    const v0, 0x7f020747

    const v1, 0x7f02073d

    const v2, 0x7f020752

    const v3, 0x7f020742

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    return-void

    :array_0
    .array-data 4
        0x7f0206c9
        0x7f0206cb
        0x7f0206cd
        0x7f0206cf
        0x7f0206d1
        0x7f0206d3
    .end array-data

    :array_1
    .array-data 4
        0x7f0206c9
        0x7f0206cb
        0x7f0206cd
        0x7f0206cf
        0x7f0206d1
        0x7f0206d3
    .end array-data

    :array_2
    .array-data 4
        0x7f020729
        0x7f02072b
        0x7f02072d
        0x7f02072f
        0x7f020731
        0x7f020733
    .end array-data

    :array_3
    .array-data 4
        0x7f020729
        0x7f02072b
        0x7f02072d
        0x7f02072f
        0x7f020731
        0x7f020733
    .end array-data

    :array_4
    .array-data 4
        0x7f020763
        0x7f020765
        0x7f020767
        0x7f020769
        0x7f02076b
        0x7f02076d
    .end array-data

    :array_5
    .array-data 4
        0x7f020755
        0x7f020757
        0x7f020759
        0x7f02075b
        0x7f02075d
        0x7f02075f
    .end array-data

    :array_6
    .array-data 4
        0x7f0206db
        0x7f0206dc
        0x7f0206dd
        0x7f0206de
        0x7f0206df
        0x7f0206e0
    .end array-data

    :array_7
    .array-data 4
        0x7f0206e1
        0x7f0206e2
        0x7f0206e3
        0x7f0206e4
        0x7f0206e5
        0x7f0206e6
        0x7f0206e7
        0x7f0206e8
        0x7f0206e9
        0x7f0206ea
        0x7f0206eb
        0x7f0206ec
        0x7f0206ed
        0x7f0206ee
        0x7f0206ef
        0x7f0206f0
        0x7f0206f1
        0x7f0206f2
        0x7f0206f3
        0x7f0206f4
        0x7f0206f5
        0x7f0206f6
        0x7f0206f7
        0x7f0206f8
        0x7f0206f9
    .end array-data

    :array_8
    .array-data 4
        0x7f0206fa
        0x7f0206fb
        0x7f0206fc
        0x7f0206fd
        0x7f0206fe
        0x7f0206ff
        0x7f020700
        0x7f020701
        0x7f020702
        0x7f020703
        0x7f020704
        0x7f020705
        0x7f020706
        0x7f020707
        0x7f020708
        0x7f020709
        0x7f02070a
        0x7f02070b
        0x7f02070c
        0x7f02070d
        0x7f02070e
        0x7f02070f
        0x7f020710
        0x7f020711
        0x7f020712
        0x7f020713
        0x7f020714
        0x7f020715
        0x7f020716
        0x7f020717
        0x7f020718
        0x7f020719
        0x7f02071a
        0x7f02071b
        0x7f02071c
        0x7f02071d
    .end array-data

    :array_9
    .array-data 4
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
    .end array-data

    :array_a
    .array-data 4
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
        0x7f0206d5
    .end array-data

    :array_b
    .array-data 4
        0x7f0206ac
        0x7f0206ad
        0x7f0206af
        0x7f0206b3
        0x7f0206b3
        0x7f0206b2
        0x7f0206b1
        0x7f0206b4
        0x7f0206b0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTelephonyCarrierNetworkChangeIcon()[[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_CARRIER_NETWORK_CHANGE:[[I

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CARRIER_NETWORK_CHANGE:[[I

    return-object v1
.end method

.method static getTelephonyNoServiceIcon()I
    .locals 3

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    const v0, 0x7f020761

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f02074b

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MTR"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v0, 0x7f02074a

    goto :goto_0

    :cond_3
    const v0, 0x7f020749

    goto :goto_0
.end method

.method static getTelephonySignalContentDesc()[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    return-object v1
.end method

.method static getTelephonySignalStrength()[[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_PURE_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    return-object v1
.end method

.method static getTelephonySignalStrengthFocusBg()I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x7f020734

    return v0

    :cond_0
    const v0, 0x7f020735

    return v0
.end method

.method static getTelephonySignalStrengthFocused()[[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_5_LEVEL_STRENGTH_FOCUS:[[I

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[[I

    return-object v0
.end method

.method static getTelephonySignalStrengthForCTC(Z)[I
    .locals 2

    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_5_LEVEL_SIGNAL_STRENGTH:[I

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH_TWO_LINE:[I

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_CTC_SIGNAL_STRENGTH:[I

    return-object v0
.end method
