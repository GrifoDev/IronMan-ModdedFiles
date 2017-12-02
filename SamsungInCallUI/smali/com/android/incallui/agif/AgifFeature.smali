.class public Lcom/android/incallui/agif/AgifFeature;
.super Ljava/lang/Object;


# static fields
.field private static final AMX_OPERATOR_LIST:[Ljava/lang/String;

.field private static final CSC_NODE_GENERAL_INFO:Ljava/lang/String; = "GeneralInfo"

.field private static final CSC_NODE_SALES_CODE:Ljava/lang/String; = "SalesCode"

.field private static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field private static final EXTRA_ENHANCED_FEATURE:Ljava/lang/String; = "extra_enhanced_feature"

.field private static final EXTRA_SUPPORT_ENHANCED_SERVICE:Ljava/lang/String; = "extra_support_enhanced_service"

.field private static final EXTRA_SUPPORT_SERVICE:Ljava/lang/String; = "extra_support_service"

.field private static final INCALLUI_PACKAGE_NAME:Ljava/lang/String;

.field private static final INDUCE:Ljava/lang/String; = "induce"

.field private static final LATIN_COUNTRY_CODE_LIST:[Ljava/lang/String;

.field private static final META_DATA_STICKER_TYPE:Ljava/lang/String; = "com.samsung.android.sticker.type"

.field private static final NOT_AVAILABLE_AGIF_INCALL_SERVICE_OPERATORS:[Ljava/lang/String;

.field private static final NOT_AVAILABLE_AGIF_SERVICE_NETWORK_TYPE:[Ljava/lang/Integer;

.field private static final PERSIST_OMC_SALES_CODE:Ljava/lang/String; = "persist.omc.sales_code"

.field private static final RECOMMEND:Ljava/lang/String; = "recommend"

.field private static final REJECT:Ljava/lang/String; = "reject"

.field private static final RO_BUILD_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static final RO_CSC_COUNTRYISO_CODE:Ljava/lang/String; = "ro.csc.countryiso_code"

.field private static final SUPPORT_DEVICE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AgifFeature"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTC"

    aput-object v1, v0, v3

    const-string v1, "XAS"

    aput-object v1, v0, v4

    const-string v1, "SPR"

    aput-object v1, v0, v6

    const-string v1, "USC"

    aput-object v1, v0, v7

    const-string v1, "ACG"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "LRA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BST"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "VMU"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_INCALL_SERVICE_OPERATORS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dream"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->SUPPORT_DEVICE:[Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BR"

    aput-object v1, v0, v3

    const-string v1, "MX"

    aput-object v1, v0, v4

    const-string v1, "AR"

    aput-object v1, v0, v6

    const-string v1, "UY"

    aput-object v1, v0, v7

    const-string v1, "CO"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "CL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "VE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SV"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NI"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "M4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->LATIN_COUNTRY_CODE_LIST:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTI"

    aput-object v1, v0, v3

    const-string v1, "ZTA"

    aput-object v1, v0, v4

    const-string v1, "CHL"

    aput-object v1, v0, v6

    const-string v1, "COM"

    aput-object v1, v0, v7

    const-string v1, "CRC"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "CDR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ECO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PER"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PGU"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TCE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CPA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CTP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PET"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PCT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CTU"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->AMX_OPERATOR_LIST:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_SERVICE_NETWORK_TYPE:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCountryIsoCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/external/CscParser;->getInstance()Lcom/android/incallui/external/CscParser;

    move-result-object v0

    const-string v1, "GeneralInfo"

    invoke-virtual {v0, v1}, Lcom/android/incallui/external/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "SalesCode"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/external/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSimOperator()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportEnhancedService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "extra_enhanced_feature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recommend"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportAgifInCallService()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportAgifRejectService()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "extra_support_enhanced_service"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "reject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportAgifRejectService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extra_support_enhanced_service"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v1, "induce"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isInduceServiceSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extra_support_enhanced_service"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getSupportService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportAgifInCallService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extra_support_service"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p1
.end method

.method private static hasAgifCallMetaData()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/incallui/agif/AgifFeature;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sticker.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "call"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "AgifFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasAgifCallMetaData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isInduceServiceSupportedDevice()Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AgifFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInduceServiceSupportedDevice for-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/android/incallui/agif/AgifFeature;->SUPPORT_DEVICE:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isNotSupportedAgifRejectService()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/agif/AgifFeature;->LATIN_COUNTRY_CODE_LIST:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sget-object v2, Lcom/android/incallui/agif/AgifFeature;->AMX_OPERATOR_LIST:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AgifFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotSupportedAgifRejectService: isNotSupported-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportAgifInCallService()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportedAgifRejectOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AgifFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAgifInCallService: isSupportAgifCall-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportAgifRejectService()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isNotSupportedAgifRejectService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AgifFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAgifRejectService: isSupportReject-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedAgifRejectOnly()Z
    .locals 9

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v3, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_INCALL_SERVICE_OPERATORS:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_INCALL_SERVICE_OPERATORS:[Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_SERVICE_NETWORK_TYPE:[Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v6, "AgifFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportedAgifRejectOnly-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " isSupportedAgifRejectOnlyCSC-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " salesCode-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSupportedAgifRejectOnlySim-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simCardOperator-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isForbiddenNetworkType-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedDevice()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->hasAgifCallMetaData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->isTabletDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isTabletDevice()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printAgifFeature()V
    .locals 11

    const/4 v0, 0x0

    const-string v5, "supportDevice :"

    const-string v4, "supportAgifRejectOnlyOperator :"

    const-string v3, "notSupportAgifRejectCountry :"

    const-string v2, "amxOperator :"

    const-string v1, "notAvailableNetworkType :"

    sget-object v7, Lcom/android/incallui/agif/AgifFeature;->SUPPORT_DEVICE:[Ljava/lang/String;

    array-length v8, v7

    move-object v6, v5

    move v5, v0

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v9, v7, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_INCALL_SERVICE_OPERATORS:[Ljava/lang/String;

    array-length v8, v7

    move-object v5, v4

    move v4, v0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v9, v7, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/incallui/agif/AgifFeature;->LATIN_COUNTRY_CODE_LIST:[Ljava/lang/String;

    array-length v8, v7

    move-object v4, v3

    move v3, v0

    :goto_2
    if-ge v3, v8, :cond_2

    aget-object v9, v7, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/android/incallui/agif/AgifFeature;->AMX_OPERATOR_LIST:[Ljava/lang/String;

    array-length v8, v7

    move-object v3, v2

    move v2, v0

    :goto_3
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/android/incallui/agif/AgifFeature;->NOT_AVAILABLE_AGIF_SERVICE_NETWORK_TYPE:[Ljava/lang/Integer;

    array-length v7, v2

    :goto_4
    if-ge v0, v7, :cond_4

    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const-string v0, "AgifFeature"

    const-string v2, "printAgifFeature..."

    invoke-static {v0, v2}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AgifFeature"

    invoke-static {v0, v6}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AgifFeature"

    invoke-static {v0, v5}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AgifFeature"

    invoke-static {v0, v4}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AgifFeature"

    invoke-static {v0, v3}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AgifFeature"

    invoke-static {v0, v1}, Lcom/android/incallui/log/InCallUILog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
