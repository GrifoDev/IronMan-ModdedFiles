.class public Lcom/samsung/android/multiscreen/MultiScreenSettings;
.super Ljava/lang/Object;
.source "MultiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;,
        Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DUALVIEW_INPUTMETHOD_SETTINGS_ENABLED:Ljava/lang/String; = "dualview_inputmethod_enabled"

.field public static final TAG:Ljava/lang/String; = "MultiScreenSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualViewInputMethodEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

.field private mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->updateSettings()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateSettings()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "MultiScreenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettings() : mOnSettingChangedListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dualview_inputmethod_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

    const-string/jumbo v3, "dualview_inputmethod_enabled"

    invoke-interface {v2, v3}, Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDualViewInputMethodEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/multiscreen/MultiScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mSettingsObserver:Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->observe()V

    return-void
.end method

.method public isDualViewInputMethodEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mDualViewInputMethodEnabled:Z

    return v0
.end method

.method public setOnSettingChangedListener(Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;

    return-void
.end method
