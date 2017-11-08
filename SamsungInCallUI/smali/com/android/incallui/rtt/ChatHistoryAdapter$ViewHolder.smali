.class Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rtt/ChatHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public mPhoto:Landroid/widget/ImageView;

.field private mRecMsgContainer:Landroid/view/View;

.field private mSentMsgContainer:Landroid/view/View;

.field public recTxtMessageFirst:Landroid/widget/TextView;

.field public recTxtMessageSec:Landroid/widget/TextView;

.field public sentTxtMessageFirst:Landroid/widget/TextView;

.field public sentTxtMessageSec:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/rtt/ChatHistoryAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mSentMsgContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mSentMsgContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mRecMsgContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mRecMsgContainer:Landroid/view/View;

    return-object p1
.end method
