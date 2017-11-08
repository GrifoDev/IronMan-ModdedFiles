.class public Lcom/android/incallui/rtt/RTTUtil;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RTTUtil"

.field private static mIsRTTActive:Z

.field private static mIsRealTimeModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRealTimeModeOn:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRTTActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealTimeMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRealTimeModeOn:Z

    return v0
.end method

.method public static getRttActiveStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRTTActive:Z

    return v0
.end method

.method public static setRttActiveStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/rtt/RTTUtil;->mIsRTTActive:Z

    return-void
.end method

.method public static toggleRTTMode()V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRealTimeModeOn:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rtt/RTTUtil;->mIsRealTimeModeOn:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcom/android/incallui/rtt/RTTUtil;->mIsRealTimeModeOn:Z

    goto :goto_0
.end method
