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
    .locals 2

    invoke-static {p1}, Lcom/android/settings/Utils;->getCurrentBixbyMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->setVisibility(I)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyModeSwitcherView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110599

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

    const v2, 0x7f0b1ed9

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

    const v2, 0x7f0b1eda

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
