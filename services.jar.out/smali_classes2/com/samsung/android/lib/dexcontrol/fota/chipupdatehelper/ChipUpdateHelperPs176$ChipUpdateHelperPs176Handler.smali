.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;
.super Landroid/os/Handler;
.source "ChipUpdateHelperPs176.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChipUpdateHelperPs176Handler"
.end annotation


# static fields
.field public static final MESSAGE_TYPE_PS176_UPDATE_FAIL:I = 0x5

.field public static final MESSAGE_TYPE_PS176_UPDATE_NOTIFY:I = 0x4

.field public static final MESSAGE_TYPE_PS176_UPDATE_PROGRESS:I = 0x3


# instance fields
.field private mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

.field private mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    if-nez v1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateProgress(Ljava/lang/String;F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateNotify(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;->onUpdateNotify(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public send(ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->mChipUpdateHelperListener:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;

    return-void
.end method
