.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;
.super Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;
.source "ChipUpdateHelperPs176.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChipUpdateHelperPs176"


# instance fields
.field private mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

.field private mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

.field private mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

.field private mPeviousDownloadPercent:I

.field private mResetOption:I

.field private mStartOption:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mResetOption:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mStartOption:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mPeviousDownloadPercent:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mPeviousDownloadPercent:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mPeviousDownloadPercent:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->onError()V

    return-void
.end method

.method private hidReset()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->reset()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reset result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChipUpdateHelperPs176"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onError()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->hidReset()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getChipId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->send(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    const/4 v3, 0x4

    const-string/jumbo v0, "ChipUpdateHelperPs176"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mResetOption:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->hidReset()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getChipId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->send(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getChipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->send(ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->close()V

    return-void
.end method

.method create(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase;->create(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "create id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChipUpdateHelperPs176"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    return-void
.end method

.method destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ChipUpdateHelperPs176"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$NdkApiPs176Listener;)V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    goto :goto_3
.end method

.method getChipInfo()Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;
    .locals 4

    const-string/jumbo v2, "ChipUpdateHelperPs176"

    const-string/jumbo v3, "getChipInfo()"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getChipId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->getFwVersion()Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$FwVersionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$FwVersionInfo;->fwAppMajorVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176$FwVersionInfo;->fwAppMinorVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/lib/dexcontrol/fota/data/SDCBinaryInfo;->chipVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method getResetOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mResetOption:I

    return v0
.end method

.method getStartOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mResetOption:I

    return v0
.end method

.method isConnected()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->isPs176Connected()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isConnected ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChipUpdateHelperPs176"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method notifyAttach(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAttach() isContinueUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ChipUpdateHelperPs176"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHidProtocol:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/protocol/HIDProtocol;->attachDevice(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbDevice;)V

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->requestUpdate()V

    goto :goto_0
.end method

.method open()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mNdkApiPs176:Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/ps176/NdkApiPs176;->open()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChipUpdateHelperPs176"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method requestUpdate()V
    .locals 4

    const-string/jumbo v1, "ChipUpdateHelperPs176"

    const-string/jumbo v2, "requestUpdate"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->getInstance()Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->getChipId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " writing...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibDataObserver;->setUpdateMessage(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->open()Z

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestUpdate() There is no file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChipUpdateHelperPs176"

    invoke-static {v2, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->onError()V

    return-void

    :cond_1
    const-string/jumbo v1, "ChipUpdateHelperPs176"

    const-string/jumbo v2, "requestUpdate update file()"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mPeviousDownloadPercent:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$2;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mHandler:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176$ChipUpdateHelperPs176Handler;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V

    return-void
.end method

.method setResetOption(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperPs176;->mResetOption:I

    return-void
.end method
