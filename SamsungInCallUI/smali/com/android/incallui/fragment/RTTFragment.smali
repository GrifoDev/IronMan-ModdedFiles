.class public Lcom/android/incallui/fragment/RTTFragment;
.super Lcom/android/incallui/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/RTTUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/RTTPresenter;",
        "Lcom/android/incallui/RTTUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/incallui/RTTUi;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/android/incallui/rtt/ChatAdapter;

.field private callToDisplay:Lcom/android/incallui/Call;

.field private chatHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/rtt/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private countdowntimer:Landroid/os/CountDownTimer;

.field private historySaved:Z

.field private idCount:J

.field private mActivity:Lcom/android/incallui/InCallActivity;

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mElapsedTimeContainer:Landroid/view/View;

.field protected mHDWifiIcon:Landroid/widget/ImageView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mKeyboardHidden:Z

.field protected mName:Landroid/widget/TextView;

.field protected mOnScreenMenuBtnView:Landroid/view/View;

.field protected mOnScreenMenuIcon:Landroid/widget/ImageButton;

.field protected mRttMergeButton:Landroid/widget/Button;

.field protected mRttSwapButton:Landroid/widget/Button;

.field private mRttView:Landroid/widget/LinearLayout;

.field protected mSecondaryHDWifiIcon:Landroid/widget/ImageView;

.field protected mSecondaryLabel:Landroid/widget/TextView;

.field protected mSecondaryName:Landroid/widget/TextView;

.field protected mSpace:Landroid/view/View;

.field public mView:Landroid/view/View;

.field private rttConversation:Landroid/widget/ListView;

.field private rttDialougehasShown:Z

.field private rttSendMessage:Landroid/widget/EditText;

.field private sbSendMsg:Ljava/lang/StringBuilder;

.field private sendBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mKeyboardHidden:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttDialougehasShown:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/RTTFragment;->historySaved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/RTTFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mKeyboardHidden:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/RTTFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/RTTFragment;->mKeyboardHidden:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/RTTFragment;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/fragment/RTTFragment;->setSendBtnLayout(ZII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/fragment/RTTFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    return-wide v0
.end method

.method static synthetic access$304(Lcom/android/incallui/fragment/RTTFragment;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/incallui/fragment/RTTFragment;)Lcom/android/incallui/rtt/ChatAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/fragment/RTTFragment;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->countdowntimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/fragment/RTTFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/RTTFragment;->countdowntimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/fragment/RTTFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSwapComplete()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isRttCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handleSwapComplete -mitender 5"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isRttChatMinimised()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onCallListChange -mitender 6"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    const-string v1, "handleSwapComplete -mitender 7"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setRttChatMinimised(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/InCallActivity;->displayRTT(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->refreshButtonsForRtt()V

    :cond_0
    return-void
.end method

.method private initControls(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initControls= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1003f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttConversation:Landroid/widget/ListView;

    const v0, 0x7f1003ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getRttChatmessages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "mRttChatMessages not null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->chatHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getRttChatmessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v0, Lcom/android/incallui/rtt/ChatAdapter;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment;->chatHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/rtt/ChatAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initControls: adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttConversation:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sbSendMsg:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$6;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$7;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$8;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    const-string v0, "mRttChatMessages null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadDummyHistory()V
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/incallui/rtt/ChatMessage;

    invoke-direct {v0}, Lcom/android/incallui/rtt/ChatMessage;-><init>()V

    iget-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/rtt/ChatMessage;->setId(J)V

    invoke-virtual {v0, v4}, Lcom/android/incallui/rtt/ChatMessage;->setMe(Z)V

    const-string v1, "Hi"

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setDate(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/rtt/ChatMessage;

    invoke-direct {v0}, Lcom/android/incallui/rtt/ChatMessage;-><init>()V

    iget-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/rtt/ChatMessage;->setId(J)V

    invoke-virtual {v0, v4}, Lcom/android/incallui/rtt/ChatMessage;->setMe(Z)V

    const-string v1, "How r u doing???"

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setDate(Ljava/lang/String;)V

    return-void
.end method

.method private menuButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_2
    const-string v0, "activity or menu is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttConversation:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttConversation:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private setSendBtnLayout(ZII)V
    .locals 5

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Keyboard shown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v0, "Keyboard hidden"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupInCallPopupMenu(I)V
    .locals 2

    const-string v0, "setupInCallPopupMenu()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    const-string v0, "setupInCallPopupMenu() success"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallActivity;->setupInCallMenu(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "activity is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->createPresenter()Lcom/android/incallui/RTTPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/RTTPresenter;
    .locals 1

    new-instance v0, Lcom/android/incallui/RTTPresenter;

    invoke-direct {v0}, Lcom/android/incallui/RTTPresenter;-><init>()V

    return-object v0
.end method

.method public displayMessage(Lcom/android/incallui/rtt/ChatMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/ChatAdapter;->add(Lcom/android/incallui/rtt/ChatMessage;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->scroll()V

    return-void
.end method

.method public getCallTimer(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const-string v0, "setupCallTimer()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuRes()I
    .locals 1

    const/high16 v0, 0x7f120000

    return v0
.end method

.method public getUi()Lcom/android/incallui/RTTUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getUi()Lcom/android/incallui/RTTUi;

    move-result-object v0

    return-object v0
.end method

.method public hideCallerInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "hideCallerInfo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideHDWifiIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mHDWifiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v0, "hideHDWifiIcon"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mHDWifiIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideSoftInput(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hideSoftInput()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->focusOut(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public isRTTKeyboardOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mKeyboardHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "onClick "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "onClick onScreenMenuIcon"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->menuButtonClicked()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :sswitch_3
    const-string v0, "swap animation end..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/UiAdapter;->setSwapProcessing(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isRTTVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setRttChatMinimised(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/incallui/InCallActivity;->displayRTT(ZZ)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->refreshButtonsForRtt()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002f0 -> :sswitch_1
        0x7f1003ea -> :sswitch_0
        0x7f1003eb -> :sswitch_3
        0x7f1003ee -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "RTTKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->chatHistory:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string v0, "RTTKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->chatHistory:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "onCreateView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040120

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    const v0, 0x7f040121

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView()...callToDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->updateRTTMessage()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView()...adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView()...adapter.getMsgs(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatAdapter;->getMsgs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->callToDisplay:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatAdapter;->getMsgs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->setRttChatmessages(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->hideSoftInput(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-direct {p0, v1, v1, v1}, Lcom/android/incallui/fragment/RTTFragment;->setSendBtnLayout(ZII)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->setupInCallMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->setupCallTimer(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->showElapsedTimeContainer()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->setPrimaryCallMenuForRTT(Z)V

    return-void
.end method

.method public onRttEvent(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRttEvent(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findTheirLastRealTimePosition()I

    move-result v0

    if-eq v0, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRttEvent(): Real time bubble position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRttEvent(): real time received character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$1;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findTheirLastRealTimePosition()I

    move-result v0

    if-eq v0, v2, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatMessage.getMessage()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u0008"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\t"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chatMessage length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-le v2, v6, :cond_4

    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/RTTFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/fragment/RTTFragment$2;-><init>(Lcom/android/incallui/fragment/RTTFragment;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_msg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$3;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/android/incallui/rtt/ChatMessage;

    invoke-direct {v0}, Lcom/android/incallui/rtt/ChatMessage;-><init>()V

    invoke-virtual {v0, v5}, Lcom/android/incallui/rtt/ChatMessage;->setMe(Z)V

    invoke-virtual {v0, v6}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/ChatMessage;->setMessage(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatMessage;->setDate(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/rtt/ChatMessage;->setId(J)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/RTTFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/fragment/RTTFragment$4;-><init>(Lcom/android/incallui/fragment/RTTFragment;Lcom/android/incallui/rtt/ChatMessage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState().."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RTTKey"

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->chatHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onViewCreated()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1002f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1002c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mHDWifiIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1003e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSecondaryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f100375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1003e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSecondaryHDWifiIcon:Landroid/widget/ImageView;

    const v0, 0x7f1003ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttMergeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f1003eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttSwapButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mSpace:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    const v1, 0x7f1003e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mRttView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/fragment/RTTFragment;->idCount:J

    iput-boolean v2, p0, Lcom/android/incallui/fragment/RTTFragment;->historySaved:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->setupLayout()V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->setupCallTimer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->initControls(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->setPrimaryNameForRTT()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->setSecondaryNameForRTT()V

    invoke-direct {p0, v2, v2, v2}, Lcom/android/incallui/fragment/RTTFragment;->setSendBtnLayout(ZII)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/RTTFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/fragment/RTTFragment$5;-><init>(Lcom/android/incallui/fragment/RTTFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeMessage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMessage pos= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/ChatAdapter;->remove(I)V

    return-void
.end method

.method public saveRTTHistory()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/RTTFragment;->historySaved:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v2}, Lcom/android/incallui/rtt/ChatAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "saveRTTHistory No chat history"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f090611

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/RTTFragment;->historySaved:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCreationTime()J

    move-result-wide v4

    new-instance v2, Lcom/samsung/android/provider/rttcallprovider/c;

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v2, v0}, Lcom/samsung/android/provider/rttcallprovider/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRTTHistory creationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/rtt/RTTTask;

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    iget-object v3, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/rtt/RTTTask;-><init>(Landroid/content/Context;Lcom/samsung/android/provider/rttcallprovider/c;Lcom/android/incallui/rtt/ChatAdapter;J)V

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/RTTTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "setPrimaryCallElapsedTime()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "setPrimaryCallElapsedTime()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "setPrimaryCallElapsedTime Call onHold"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryCallMenuForRTT(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result p1

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setPrimaryNameForRTT()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryNameForRTT()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSecondaryNameForRTT()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryNameForRTT()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mSecondaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mSecondaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupCallTimer(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "setupCallTimer()"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    const-string v0, "setupCallTimer() view is null !!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->getCallTimer(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupCallTimer() view is null !! callTimeElapsed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/fragment/RTTFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setupInCallMenu(Landroid/view/View;)V
    .locals 2

    const-string v0, "setupInCallMenu()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string v0, "setupInCallMenu() view is null !!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f1002f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    const v0, 0x7f1002f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mOnScreenMenuBtnView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/RTTFragment;->setupInCallPopupMenu(I)V

    goto :goto_0
.end method

.method public setupLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showElapsedTimeContainer()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showNetworkdowngradedialoge()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090650

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/fragment/RTTFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/RTTFragment$10;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$9;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/android/incallui/fragment/RTTFragment;->rttDialougehasShown:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-boolean v4, p0, Lcom/android/incallui/fragment/RTTFragment;->rttDialougehasShown:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/RTTFragment;->scroll()V

    return-void
.end method

.method public updateRTTMessage()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "updateRTTMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/ChatAdapter;->findMyLastRealTimePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatAdapter;->findTheirLastRealTimePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment;->countdowntimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment;->countdowntimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    if-eq v0, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/RTTPresenter;

    const-string v2, "\r"

    invoke-virtual {v0, v2}, Lcom/android/incallui/RTTPresenter;->sendRttMessage(Ljava/lang/String;)V

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/incallui/rtt/ChatMessage;->setRealTime(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/RTTFragment;->rttSendMessage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/RTTFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/RTTFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/RTTFragment$11;-><init>(Lcom/android/incallui/fragment/RTTFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
