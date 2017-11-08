.class public Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weight"
.end annotation


# static fields
.field private static final CENTAGE_CALL_STATE_HEIGHT:F = 10.0f

.field private static final CENTAGE_SMALL_VIEW_PHONE:F = 25.0f

.field private static final CENTAGE_SMALL_VIEW_TABLET:F = 18.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRatePercent(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p0, v0

    return v0
.end method

.method public static getRatePercentCallStateHeight()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public static getRatePercentPhone()F
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static getRatePercentTablet()F
    .locals 1

    const v0, 0x3e3851ec    # 0.18f

    return v0
.end method

.method public static getRatePermil(F)F
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v0, p0, v0

    return v0
.end method
