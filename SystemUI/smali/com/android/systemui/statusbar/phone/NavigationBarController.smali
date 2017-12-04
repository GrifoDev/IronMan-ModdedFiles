.class public Lcom/android/systemui/statusbar/phone/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarController$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlwaysWhiteBar:Z

.field private mContext:Landroid/content/Context;

.field private mDarkBar:Z

.field private mDarkBarVisivility:I

.field private mDarkNavigation:Z

.field private mDimmingDarkBar:Z

.field private mDockedStackExist:Z

.field private mFullscreenVisivility:I

.field private mLastPinButtonShow:Z

.field private mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNavigationBarMode:I

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mOpenThemeAppliedBar:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDockedStackExist:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private getNavBarCustomIconColor(I)I
    .locals 14

    const-wide v12, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fee666666666666L    # 0.95

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x3

    new-array v1, v2, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NavigationBarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(IconColor Calc) current Color H : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", S : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", V : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b017c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v2, -0xa0a0b

    if-eq p1, v2, :cond_1

    const v2, -0xf0f10

    if-ne p1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b017b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    return v2

    :cond_2
    const v2, -0x19191a

    if-eq p1, v2, :cond_1

    const v2, -0x191910

    if-eq p1, v2, :cond_1

    const v2, -0xf0f1a

    if-eq p1, v2, :cond_1

    const v2, -0xf191a

    if-eq p1, v2, :cond_1

    const v2, -0xf1910

    if-eq p1, v2, :cond_1

    const v2, -0xf141a

    if-eq p1, v2, :cond_1

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0187

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_3
    :goto_0
    return v0

    :cond_4
    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_5
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_6

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    aget v2, v1, v8

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    :cond_6
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_8

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_8
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_9

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_9

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_7

    :cond_9
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_a

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_7

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0189

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_10

    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_d

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_d
    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_e

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_c

    :cond_e
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_f

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_c

    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0189

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    aget v2, v1, v8

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    aget v2, v1, v8

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    :goto_1
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_13

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_13

    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    :cond_12
    aget v2, v1, v8

    const/high16 v3, 0x43110000    # 145.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    aget v2, v1, v8

    const/high16 v3, 0x433e0000    # 190.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_13
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_14

    aget v2, v1, v6

    float-to-double v2, v2

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_14

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-lez v2, :cond_11

    :cond_14
    aget v2, v1, v7

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_15

    aget v2, v1, v6

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_15

    aget v2, v1, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v12

    if-lez v2, :cond_11

    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0189

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method private isDark(III)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq p3, v3, :cond_0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_3

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    if-eqz v0, :cond_8

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    return v3

    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-nez v2, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    :cond_a
    return v3
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    return-void
.end method


# virtual methods
.method public getBarMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    return v0
.end method

.method public getIconColor(ZI)I
    .locals 13

    const v12, 0x7f0b017d

    const/4 v11, 0x7

    const/4 v10, 0x2

    const v9, 0x7f0b017b

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v2, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowClipboard:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v3, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowQuickPanel:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NavigationBarController"

    const-string/jumbo v5, "isLight = %b, mDarkbar = %b, mDimmingDarkBar = %b, mOpenThemeAppliedBar = %b, mAlwaysWhiteBar = %b, iconColor = %s, showQuickPanel = %b, isBackAlt = %b, showClipboard = %b, BarMode = %d"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v6, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-eq v4, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-eq v4, v11, :cond_9

    if-eqz p1, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    if-eqz v4, :cond_8

    :cond_6
    :goto_1
    if-eqz p1, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    if-eqz v4, :cond_a

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_8
    if-nez v0, :cond_9

    if-eqz v2, :cond_6

    :cond_9
    const/4 p1, 0x0

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_b

    return p2

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b017e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_c
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-ne v4, v11, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_e
    if-nez v0, :cond_f

    if-eqz v2, :cond_18

    :cond_f
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentRotation()I

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentRotation()I

    move-result v4

    if-ne v4, v10, :cond_11

    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_11
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_12
    if-eqz p2, :cond_13

    return p2

    :cond_13
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b017e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eqz v4, :cond_17

    :cond_15
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarThemeColor()I

    move-result v1

    :goto_2
    if-eqz v1, :cond_16

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0179

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    if-ne v1, v4, :cond_1c

    :cond_16
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_17
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_18
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eqz v4, :cond_1a

    :cond_19
    if-eqz p2, :cond_15

    return p2

    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarCurrentColor()I

    move-result v1

    goto :goto_2

    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getNavBarCustomIconColor(I)I

    move-result v4

    return v4
.end method

.method public getLastPinButtonShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mLastPinButtonShow:Z

    return v0
.end method

.method public isDarkNavigation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    return v0
.end method

.method public onSystemUiVisibilityChanged(IIIZI)V
    .locals 19

    sget-boolean v14, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "NavigationBarController"

    const-string/jumbo v15, "vis = %s, fullscreenVis = %s, nbModeChanged = %b navigationBarMode = %d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v16, v18

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v16, v18

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v16, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    move/from16 v0, p3

    not-int v14, v0

    and-int/2addr v14, v9

    and-int/lit8 v15, p1, 0x10

    and-int v15, v15, p3

    or-int v5, v14, v15

    xor-int v2, v5, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    if-nez p2, :cond_7

    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    :goto_0
    xor-int v3, v6, v11

    and-int/lit16 v14, v3, 0x100

    if-nez v14, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    and-int/lit16 v14, v6, 0x100

    if-eqz v14, :cond_8

    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDockedStackExist:Z

    :goto_2
    if-eqz v13, :cond_2

    if-eqz v4, :cond_a

    :cond_2
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mLastPinButtonShow:Z

    const-string/jumbo v14, "NavigationBarController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FLAG_NAVIGATIONBAR_SHOW_IMMERSIVE_ICON flag changed. show="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", isDocked="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", barMode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mLastPinButtonShow:Z

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPinButtonVisibility(Z)V

    :cond_3
    if-nez p4, :cond_4

    and-int/lit8 v14, v2, 0x10

    if-eqz v14, :cond_b

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDark(III)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    if-nez p4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-eq v8, v14, :cond_c

    :cond_5
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->update()V

    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    return-void

    :cond_7
    move/from16 v6, p2

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    const/4 v14, 0x1

    goto :goto_3

    :cond_b
    and-int/lit16 v14, v3, 0xf0

    if-eqz v14, :cond_6

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-ne v10, v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-ne v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mAlwaysWhiteBar:Z

    if-eq v7, v14, :cond_6

    goto :goto_5
.end method

.method public setDockedStackExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDockedStackExist:Z

    return-void
.end method
