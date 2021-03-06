.class public Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;,
        Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;
    }
.end annotation


# static fields
.field public static KEY_WARNING_PROGRESS:Ljava/lang/String;

.field public static KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

.field private static mPadding:I

.field private static mScreenWidth:I

.field public static sIsEnable:Z


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEndPercent:Landroid/widget/TextView;

.field private mProgress:I

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mStartPercent:Landroid/widget/TextView;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mediumText:Landroid/widget/TextView;

.field private mediumTextBlow:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->updatePolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    const-string/jumbo v0, "warning_progress"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    const-string/jumbo v0, "warning_progress_width"

    sput-object v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    new-instance v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private updatePolicy()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v2, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14

    const/4 v7, 0x0

    const v11, 0x7f150134

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    const v11, 0x7f0a078f

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const v11, 0x7f0a0819

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const v11, 0x7f0a0512

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const v11, 0x7f0a02d2

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const v11, 0x7f0a0516

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07020c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sput v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mPadding:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f030094

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v7

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0300bb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "off"

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "off"

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    if-nez v11, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_6
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS_WIDTH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mScreenWidth:I

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "max"

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v11, "max"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_data_limit"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :cond_b
    :goto_3
    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    int-to-float v11, v11

    const/high16 v12, 0x42200000    # 40.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    mul-float v1, v11, v12

    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v11, "0.00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v12, v1

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    add-int/lit8 v5, v11, 0x28

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06006c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f06006c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f1206fe

    invoke-virtual {p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v12, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_c
    return-object v7

    :catch_0
    move-exception v3

    const-string/jumbo v10, "off"

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mProgress:I

    goto/16 :goto_1

    :cond_d
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_e
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_f
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11
    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v4, "max"

    goto/16 :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DataWarning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DataWarning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "off"

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b013e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b013f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz p2, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v7, v2, v1, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    if-eqz p2, :cond_6

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_warning_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->updatePolicy()V

    return-void

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    const-string/jumbo v3, "off"

    goto :goto_1
.end method
