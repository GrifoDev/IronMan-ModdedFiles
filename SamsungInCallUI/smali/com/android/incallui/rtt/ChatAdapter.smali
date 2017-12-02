.class public Lcom/android/incallui/rtt/ChatAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;
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

.field private contactPhoto:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
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

    iput-object p1, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatAdapter;->getContactPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->contactPhoto:Landroid/graphics/drawable/Drawable;

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

.method private createViewHolder(Landroid/view/View;)Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;
    .locals 2

    new-instance v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;-><init>(Lcom/android/incallui/rtt/ChatAdapter$1;)V

    const v0, 0x7f1001c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    const v0, 0x7f1001c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    const v0, 0x7f1001c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    const v0, 0x7f1001c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    const v0, 0x7f1001c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$102(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f1001c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$002(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f1001c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    return-object v1
.end method

.method private findChatMesgTextSize()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRTTSystemFontOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rtt/FontSizeController;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getRTTFontSize()I

    move-result v0

    goto :goto_0
.end method

.method private getContactPhoto()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0434

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "image is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "getContactPhoto entry null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setMsg(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;ZZLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v0, v2

    double-to-int v1, v0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$000(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$100(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatAdapter;->findChatMesgTextSize()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/incallui/rtt/FontSizeController;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatAdapter;->findChatMesgTextSize()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/incallui/rtt/FontSizeController;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$000(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->access$100(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/rtt/ChatAdapter;->contactPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/rtt/ChatAdapter;->contactPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/rtt/ChatAdapter;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a042e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatAdapter;->findChatMesgTextSize()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/incallui/rtt/FontSizeController;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/rtt/ChatAdapter;->contactPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/rtt/ChatAdapter;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a042f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/rtt/ChatAdapter;->findChatMesgTextSize()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/incallui/rtt/FontSizeController;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/android/incallui/rtt/ChatMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public findMyLastRealTimePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/rtt/ChatAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getRealTime()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findTheirLastRealTimePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/rtt/ChatAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getRealTime()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMsgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/rtt/ChatMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f0e0132

    const v5, 0x7f0e0131

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_1

    const v2, 0x7f040077

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/incallui/rtt/ChatAdapter;->createViewHolder(Landroid/view/View;)Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView() chatMessage.getIsme()=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chatMessage.getRealTime()=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getRealTime()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getRealTime()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    const v4, 0x7f020217

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    const v4, 0x7f02030c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-lez p1, :cond_6

    if-eqz v1, :cond_6

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/incallui/rtt/ChatMessage;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/rtt/ChatAdapter;->checkDuration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-ne v4, v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/incallui/rtt/ChatAdapter;->setMsg(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;ZZLjava/lang/String;)V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    const v4, 0x7f02030d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageFirst:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    const v4, 0x7f02030e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->sentTxtMessageSec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getRealTime()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    const v4, 0x7f020216

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    const v4, 0x7f020209

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageFirst:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    const v4, 0x7f02020a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;->recTxtMessageSec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/rtt/ChatAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v7, v1}, Lcom/android/incallui/rtt/ChatAdapter;->setMsg(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;ZZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v7, v1}, Lcom/android/incallui/rtt/ChatAdapter;->setMsg(Lcom/android/incallui/rtt/ChatAdapter$ViewHolder;ZZLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/rtt/ChatAdapter;->chatMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
