.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;,
        Lcom/android/internal/app/NightDisplayController$LocalTime;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    new-instance v0, Lcom/android/internal/app/NightDisplayController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "night_display_custom_start_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "night_display_custom_end_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    goto :goto_0
.end method


# virtual methods
.method public getAutoMode()I
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_auto_mode"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string/jumbo v1, "NightDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid autoMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_custom_end_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_custom_start_time"

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    return-object v1
.end method

.method public isActivated()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_display_activated"

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setActivated(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "night_display_activated"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoMode(I)Z
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomEndTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    move-result v2

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setCustomStartTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    move-result v2

    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method
