.class public Lcom/android/incallui/rtt/ChatHistoryAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final chatMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/rtt/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/rtt/ChatMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    return-void
.end method

.method private checkDuration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd, yyyy hh:mm:ss a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    sub-int v1, v3, v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;
    .locals 2

    new-instance v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;-><init>(Lcom/android/incallui/rtt/ChatHistoryAdapter$1;)V

    const v0, 0x7f1001c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    const v0, 0x7f1001c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    const v0, 0x7f1001c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    const v0, 0x7f1001c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    const v0, 0x7f1001c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$102(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f1001c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$002(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f1001c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    return-object v1
.end method

.method private setMsg(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;ZZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$000(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$100(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$000(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->access$100(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/incallui/rtt/ChatMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/rtt/ChatMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/incallui/rtt/ChatMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/ChatMessage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_1

    const v2, 0x7f040077

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->createViewHolder(Landroid/view/View;)Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v2

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/incallui/rtt/ChatMessage;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->checkDuration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne v4, v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->setMsg(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;ZZLjava/lang/String;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->setMsg(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/android/incallui/rtt/ChatHistoryAdapter;->setMsg(Lcom/android/incallui/rtt/ChatHistoryAdapter$ViewHolder;ZZLjava/lang/String;)V

    goto :goto_1
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatHistoryAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
