.class public Lcom/android/systemui/settings/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessDetail$1;,
        Lcom/android/systemui/settings/BrightnessDetail$Callback;
    }
.end annotation


# instance fields
.field private brightnessEditor:Landroid/content/SharedPreferences$Editor;

.field private brightnessPref:Landroid/content/SharedPreferences;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field public final mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mBrightnessPrefInitialized:Z

.field private mCallback:Lcom/android/systemui/settings/BrightnessDetail$Callback;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mDeatailExpandButton:Landroid/widget/ImageView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mCallback:Lcom/android/systemui/settings/BrightnessDetail$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mConvertView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "brightness_pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "initialized"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "initialized"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iput-boolean v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "4006"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "4007"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "brightness_on_top"

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS21"

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "brightness_on_top"

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/16 v0, 0x3e8

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v7, v0}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BrightnessDetail"

    const-string/jumbo v2, "showDetailAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v0, v1, [I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS24"

    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    sget-object v1, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v2, "2027"

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "hong"

    const-string/jumbo v2, "BRIGHTNESS_EXPAND"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f130497

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatailExpandButton:Landroid/widget/ImageView;

    const-string/jumbo v0, "BrightnessDetail"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDeatailExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/settings/BrightnessDetail$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mCallback:Lcom/android/systemui/settings/BrightnessDetail$Callback;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method
