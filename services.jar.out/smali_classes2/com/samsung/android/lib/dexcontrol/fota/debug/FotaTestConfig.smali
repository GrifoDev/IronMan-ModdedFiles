.class public Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;
.super Ljava/lang/Object;
.source "FotaTestConfig.java"


# static fields
.field public static LOCAL_DOWN:Z

.field public static NO_CHECK_VERSION:Z

.field public static SKIP_FOTA_PDIC_DS:Z

.field public static SKIP_FOTA_PDIC_US:Z

.field public static SKIP_FOTA_PS176:Z

.field public static UPDATE_ORDERED_CHIP_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->NO_CHECK_VERSION:Z

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->LOCAL_DOWN:Z

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PS176:Z

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_US:Z

    sput-boolean v0, Lcom/samsung/android/lib/dexcontrol/fota/debug/FotaTestConfig;->SKIP_FOTA_PDIC_DS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
