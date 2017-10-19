.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v4, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayTransformManager;

    const/4 v1, -0x1

    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "accessibility_display_daltonizer"

    const/16 v5, 0xc

    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    const/4 v1, -0x1

    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    return-void
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    :goto_0
    const/16 v4, 0x12c

    invoke-virtual {v1, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
