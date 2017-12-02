.class public Lcom/android/incallui/widget/DialpadView;
.super Lcom/android/phone/common/dialpad/DialpadView;


# instance fields
.field private hebrew:Ljava/lang/String;

.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mOverflowMenuButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10015b
        0x7f100157
        0x7f10014d
        0x7f10014e
        0x7f10014f
        0x7f100150
        0x7f100151
        0x7f100152
        0x7f100153
        0x7f100154
        0x7f10015a
        0x7f100159
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10015b
        0x7f100157
        0x7f10014d
        0x7f10014e
        0x7f10014f
        0x7f100150
        0x7f100151
        0x7f100152
        0x7f100153
        0x7f100154
        0x7f10015a
        0x7f100159
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10015b
        0x7f100157
        0x7f10014d
        0x7f10014e
        0x7f10014f
        0x7f100150
        0x7f100151
        0x7f100152
        0x7f100153
        0x7f100154
        0x7f10015a
        0x7f100159
    .end array-data
.end method

.method private setupKeypad()V
    .locals 19

    const/16 v1, 0xc

    new-array v12, v1, [I

    fill-array-data v12, :array_0

    const/16 v1, 0xc

    new-array v13, v1, [I

    fill-array-data v13, :array_1

    const/16 v1, 0xc

    new-array v14, v1, [I

    fill-array-data v14, :array_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/4 v1, 0x0

    move v8, v1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    array-length v1, v1

    if-ge v8, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    aget v1, v1, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    if-eqz v2, :cond_e

    const v1, 0x7f100155

    invoke-virtual {v2, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f100156

    invoke-virtual {v2, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1002f9

    invoke-virtual {v2, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v9, v4

    move-object v10, v3

    move-object v11, v1

    :goto_1
    if-nez v16, :cond_6

    if-eqz v9, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    aget v1, v12, v8

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v11, :cond_1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v3, "\u2217"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "*"

    invoke-virtual {v2, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    :cond_3
    if-eqz v10, :cond_4

    aget v1, v13, v8

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v9, :cond_5

    aget v1, v14, v8

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_0

    :cond_6
    if-eqz v16, :cond_0

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    const/16 v1, 0xa

    if-eq v8, v1, :cond_0

    const/16 v1, 0xb

    if-eq v8, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a006e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a00eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a055f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v4, v1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_7
    const/4 v1, 0x1

    move v3, v1

    :goto_3
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0561

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0579

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0578

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0a0577

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move/from16 v18, v1

    move v1, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v18

    :goto_4
    const/4 v7, 0x0

    invoke-virtual {v10, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-nez v3, :cond_8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v6, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v6, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v3, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a055f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0239

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0560

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move/from16 v18, v1

    move v1, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v18

    goto/16 :goto_4

    :cond_d
    return-void

    :cond_e
    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    goto/16 :goto_1

    :cond_f
    move v1, v7

    goto/16 :goto_4

    :array_0
    .array-data 4
        0x7f09056c
        0x7f09056f
        0x7f090572
        0x7f090574
        0x7f090576
        0x7f090578
        0x7f09057a
        0x7f09057c
        0x7f09057e
        0x7f090580
        0x7f090586
        0x7f090583
    .end array-data

    :array_1
    .array-data 4
        0x7f09056b
        0x7f09056e
        0x7f090571
        0x7f090573
        0x7f090575
        0x7f090577
        0x7f090579
        0x7f09057b
        0x7f09057d
        0x7f09057f
        0x7f090585
        0x7f090582
    .end array-data

    :array_2
    .array-data 4
        0x7f09056d
        0x7f090570
        0x7f090151
        0x7f090152
        0x7f090153
        0x7f090154
        0x7f090155
        0x7f090156
        0x7f090157
        0x7f090158
        0x7f090587
        0x7f090584
    .end array-data
.end method


# virtual methods
.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f100165

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f100163

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    invoke-super {p0}, Lcom/android/phone/common/dialpad/DialpadView;->onFinishInflate()V

    return-void
.end method
