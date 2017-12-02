.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;
.super Landroid/widget/RelativeLayout;
.source "BixbyModeSwitcherView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->isBixbyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->setVisibility(I)V

    return-void

    :cond_0
    return-void
.end method

.method private isBixbyMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "setupwizard_bixby_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11059b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentBixbyMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1eec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1eed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
