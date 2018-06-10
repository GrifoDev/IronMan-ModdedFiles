.class public Lcom/samsung/android/lib/dexcontrol/fota/data/ChipIdTable;
.super Ljava/lang/Object;
.source "ChipIdTable.java"


# static fields
.field public static final DEX2_CHIP_ID_DP:Ljava/lang/String; = "DEX2_DP"

.field public static final DEX2_CHIP_ID_PD_DS:Ljava/lang/String; = "DEX2_PD_DS"

.field public static final DEX2_CHIP_ID_PD_US:Ljava/lang/String; = "DEX2_PD_US"

.field public static final DEX2_ZIP_CHIP_ID:Ljava/lang/String; = "DEX_FOTA-"

.field public static final DEX2_ZIP_CHIP_ID_SET:[Ljava/lang/String;

.field public static final TEST_SERVER_DEX2_ZIP_CHIP_ID:Ljava/lang/String; = "DEX_FOTA_TEST-"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DEX2_PD_US"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "DEX2_PD_DS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "DEX2_DP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fota/data/ChipIdTable;->DEX2_ZIP_CHIP_ID_SET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
