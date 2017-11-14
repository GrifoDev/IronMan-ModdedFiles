.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDualClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;
.implements Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mFontScale:F

.field private mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

.field private mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

.field private mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

.field private mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

.field private mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    return-void
.end method

.method private registerGearObserver()V
    .locals 7

    new-instance v3, Lcom/android/wubydax/GearContentObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p0}, Lcom/android/wubydax/GearContentObserver;-><init>(Landroid/os/Handler;Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;)V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "kg_enable_lockscreen_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_hours_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_minutes_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "kg_clock_date_color"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mGearContentObserver:Lcom/android/wubydax/GearContentObserver;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHomeIcon(F)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$drawable;->lock_roaming_ic_home_mtrl:I

    sget v8, Lcom/android/keyguard/R$drawable;->lock_roaming_whitebg_ic_home_mtrl:I

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_dual_home_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {v1, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KeyguardDualClockView"

    const-string/jumbo v7, "Exception at adding home icon!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClockForUser;->setVisibility(I)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_3

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_dual_time_view_text_size:I

    :goto_2
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_4

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_dual_time_view_text_size:I

    :goto_3
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setTextSize(IF)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_dual_time_view_ampm_text_size:I

    goto :goto_2

    :cond_4
    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_dual_time_view_ampm_text_size:I

    goto :goto_3
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_dual_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    :cond_0
    return-void
.end method

.method public onContentChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "kg_enable_lockscreen_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->updateChildViewsLook()V

    goto :goto_0

    :cond_0
    const-string v0, "kg_clock_hours_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setClockDateColors()V

    goto :goto_0

    :cond_1
    const-string v0, "kg_clock_minutes_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setClockDateColors()V

    goto :goto_0

    :cond_2
    const-string v0, "kg_clock_date_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setClockDateColors()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextClock;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextClock;->setAllCaps(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldAddTimeTextForRoamingTime()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_korea:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldShowSeoulTextForHomeTime()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Asia/Seoul"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_seoul:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setClockDateColors()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->registerGearObserver()V

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->changeHourFormat()V

    :cond_3
    return-void

    :cond_4
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_local:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_roaming:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method setClockDateColors()V
    .locals 3

    const-string v0, "kg_enable_lockscreen_color"

    const v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    const-string v1, "kg_clock_hours_color"

    const v2, -0x50506

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Landroid/widget/TextClock;

    if-eqz v0, :cond_1

    const-string v0, "kg_clock_hours_color"

    const v1, -0x50506

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_2

    const-string v1, "kg_clock_date_color"

    const v2, -0x50506

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Landroid/widget/TextClock;

    if-eqz v0, :cond_3

    const-string v1, "kg_clock_hours_color"

    const v2, -0x50506

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Landroid/widget/TextClock;

    if-eqz v0, :cond_4

    const-string v0, "kg_clock_hours_color"

    const v1, -0x50506

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_5

    const-string v1, "kg_clock_date_color"

    const v2, -0x50506

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClockForUser;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateFontTypeface(Lcom/android/keyguard/util/ViewStyleUtils$FontType;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, v1, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClockForUser;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setClockDateColors()V

    return-void
.end method
