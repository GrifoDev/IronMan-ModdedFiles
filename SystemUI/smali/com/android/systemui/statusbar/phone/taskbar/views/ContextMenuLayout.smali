.class public Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;
.super Landroid/widget/LinearLayout;
.source "ContextMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field disableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

.field mContextMenuView:Landroid/view/View;

.field mTargetView:Landroid/view/View;

.field mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mType:I

.field public final maxCount:I

.field secureFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field uninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMaxMultiInstanceCnt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->maxCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->disableList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->uninstallList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->secureFolderList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMaxMultiInstanceCnt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->maxCount:I

    return-void
.end method

.method private setupAudioPathLayout()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getAudioPathView()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]ContextLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupAudioPathLayout :: expandedAudioPathView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f130538

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setupInstallSamsungConnectLayout()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f130539

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f13053a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0aae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setupKeyBoardLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v3, 0x7f13053c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v3, 0x7f13053d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupScreenCaptureLayout()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f130535

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f130536

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    const v4, 0x7f130537

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setContextMenuOpen(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setVisibility(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->dismiss()V

    return v2
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    return v0
.end method

.method public isDeskPanelContextMenu()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public makeContactUsIntent()Landroid/content/Intent;
    .locals 10

    const-string/jumbo v0, "70u8ijy998"

    const-string/jumbo v1, "Samsung DeX"

    const-string/jumbo v3, "com.samsung.android.samsungdex"

    const-string/jumbo v4, "voc://view/contactUs"

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "faqUrl"

    const-string/jumbo v6, "https://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=sdex&targetUrl=%s&chnlCd=ODC&_common_country=%s&_common_lang=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "/faq/searchFaq.do"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getDeviceCountry()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getDeviceMUSELanguage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2
.end method

.method public makeContextView(ILcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V
    .locals 38

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->removeAllViews()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0401b8

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v35, v0

    sparse-switch v35, :sswitch_data_0

    :cond_0
    :goto_0
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x2

    const/16 v36, -0x2

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130529

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f13052b

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f13052c

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f13052a

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v35, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isMultiInstanceSupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getCellLayoutTaskbar()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->countSameComponentApp(ILandroid/content/ComponentName;)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->maxCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-object/from16 v35, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->checkSameComponentShortcutExisted(ILandroid/content/ComponentName;)Z

    move-result v35

    if-eqz v35, :cond_1

    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130525

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130528

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130527

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130526

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v35, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isMultiInstanceSupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getCellLayoutTaskbar()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->countSameComponentApp(ILandroid/content/ComponentName;)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->maxCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    const/16 v35, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130522

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130523

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130524

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupScreenCaptureLayout()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupAudioPathLayout()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupInstallSamsungConnectLayout()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isDeskAllNotificationViewVisible()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f13013f

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v35, 0x7f130140

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_4

    const/16 v35, 0x8

    :goto_2
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v35, 0x7f130141

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_5

    const/16 v35, 0x0

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v35, 0x7f130142

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v35, 0x7f130143

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v35, 0x7f130144

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v35, v0

    const/16 v36, 0x65

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const v35, 0x7f130145

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v35, v0

    const/16 v36, 0x66

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    const/16 v35, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v35, 0x8

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isDeskNotificationViewVisible()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f130146

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v35, 0x7f130147

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_6

    const/16 v35, 0x8

    :goto_4
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v35, 0x7f130148

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_7

    const/16 v35, 0x0

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v35, 0x7f130149

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v35, 0x7f13014a

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const/16 v35, 0x0

    goto :goto_4

    :cond_7
    const/16 v35, 0x8

    goto :goto_5

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContextMenuView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f13014b

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v35, 0x7f13014c

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v35, 0x7f13014d

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v35, 0x7f13014e

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v35, v0

    const/16 v36, 0x69

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    const/16 v35, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    const v35, 0x7f13014f

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    move/from16 v35, v0

    const/16 v36, 0x6a

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    const/16 v35, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setupKeyBoardLayout()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_8
    .end sparse-switch
.end method

.method public makeDexSettingsIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.android.launcher3.settings.DesktopSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method public makeForSamsungDexIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "samsungapps://CategoryList/0000005211"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeMuseIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.android.launcher3.settings.HelpActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v6, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a9e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->removeTask(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, p1, v0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, p1, v1, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a9f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeForSamsungDexIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeDexSettingsIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isContactUsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeContactUsIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAppsView(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeMuseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->doScreenCapture(I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->doScreenCapture(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v3, "China"

    const-string/jumbo v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledGalaxyApps(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->launchAppInGalaxyApps(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledGooglePlay(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->launchAppInPlayStore(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInstalledGalaxyApps(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.oneconnect"

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->launchAppInGalaxyApps(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchNotificationSetting()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->clearAllNotifications()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->toggleDeskNotificationView(Z)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchAppNotificationSetting()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->launchAppInfo()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->blockNotification()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->clearNotification()V

    goto/16 :goto_0

    :sswitch_13
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3, p1, v2, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f130140 -> :sswitch_e
        0x7f130141 -> :sswitch_e
        0x7f130142 -> :sswitch_f
        0x7f130143 -> :sswitch_10
        0x7f130144 -> :sswitch_11
        0x7f130145 -> :sswitch_12
        0x7f130147 -> :sswitch_e
        0x7f130148 -> :sswitch_e
        0x7f130149 -> :sswitch_c
        0x7f13014a -> :sswitch_d
        0x7f13014c -> :sswitch_f
        0x7f13014d -> :sswitch_10
        0x7f13014e -> :sswitch_11
        0x7f13014f -> :sswitch_12
        0x7f130523 -> :sswitch_4
        0x7f130524 -> :sswitch_2
        0x7f130526 -> :sswitch_3
        0x7f130527 -> :sswitch_5
        0x7f130528 -> :sswitch_1
        0x7f13052a -> :sswitch_3
        0x7f13052b -> :sswitch_0
        0x7f13052c -> :sswitch_1
        0x7f130532 -> :sswitch_6
        0x7f130533 -> :sswitch_7
        0x7f130534 -> :sswitch_8
        0x7f130536 -> :sswitch_9
        0x7f130537 -> :sswitch_a
        0x7f13053a -> :sswitch_b
        0x7f13053d -> :sswitch_13
    .end sparse-switch
.end method

.method public setTaskBarView(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->setVisibility(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]ContextLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayout :: Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", AppItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TargetView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mType:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mAppItem:Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->makeContextView(ILcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;->invalidate()V

    return-void
.end method
