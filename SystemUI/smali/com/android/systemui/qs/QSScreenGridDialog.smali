.class public Lcom/android/systemui/qs/QSScreenGridDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "QSScreenGridDialog.java"


# instance fields
.field private gridEditor:Landroid/content/SharedPreferences$Editor;

.field private gridPref:Landroid/content/SharedPreferences;

.field private final mContext:Landroid/content/Context;

.field private mCurSelected:Landroid/view/View;

.field private mGridPrefInitialized:Z

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mOldSelected:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 25

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "grid_pref"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridPref:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridPref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "initialized"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " by 3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "initialized"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mGridPrefInitialized:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "2098"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->gridEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "X3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v7, "QS28"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v2, v6, v7, v0, v1}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0689

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setCanceledOnTouchOutside(Z)V

    const v2, 0x7f04014a

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0434

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0435

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v2, p0

    move v6, v4

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/qs/QSScreenGridDialog;->setView(Landroid/view/View;IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_10

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const v2, 0x7f130052

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "3"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v11, v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    int-to-long v6, v14

    invoke-virtual {v12, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v6, 0x2

    invoke-virtual {v12, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "X"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v2, v8, Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    move-object v2, v8

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v6, "3"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f0203cc

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0f068e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v6, v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x1

    aput-object v7, v6, v23

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/systemui/qs/QSScreenGridDialog;->scaleChange(Landroid/view/ViewGroup;Z)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "4"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const v6, 0x7f0203ce

    goto :goto_3

    :cond_9
    const v6, 0x7f0203d0

    goto :goto_3

    :cond_a
    instance-of v2, v8, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    check-cast v8, Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x3

    int-to-long v6, v14

    invoke-virtual {v12, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v6, 0x3

    invoke-virtual {v12, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "X"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v2, v8, Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0f068e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v6, v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x1

    aput-object v7, v6, v23

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_d
    instance-of v2, v8, Landroid/widget/TextView;

    if-eqz v2, :cond_c

    check-cast v8, Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    move-object/from16 v2, v22

    check-cast v2, Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v2, v8, Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    new-instance v2, Lcom/android/systemui/qs/QSScreenGridDialog$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/QSScreenGridDialog$1;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_10
    new-instance v2, Lcom/android/systemui/qs/QSScreenGridDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/QSScreenGridDialog$2;-><init>(Lcom/android/systemui/qs/QSScreenGridDialog;)V

    const v6, 0x7f0f068b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/systemui/qs/QSScreenGridDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private scaleChange(Landroid/view/ViewGroup;Z)V
    .locals 6

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-void
.end method

.method public setQSPanelGrid(I)Z
    .locals 5

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    :goto_0
    if-lt p1, v3, :cond_0

    const/4 v3, 0x5

    if-ge v3, p1, :cond_2

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    move v0, p1

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "qs_tile_column"

    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "qs_tile_column_landscape"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "qs_tile_row"

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    const/4 v3, 0x1

    return v3

    :pswitch_0
    const/4 v1, 0x6

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x8

    const/4 v2, 0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mCurSelected:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSScreenGridDialog;->mOldSelected:Landroid/view/View;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method
