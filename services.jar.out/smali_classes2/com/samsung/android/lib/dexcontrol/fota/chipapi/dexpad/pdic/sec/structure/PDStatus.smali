.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;
.super Ljava/lang/Object;
.source "PDStatus.java"


# instance fields
.field private mPdStatus:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    return-void
.end method

.method private isContractEstablished()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPortConnected()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public isSinkConnected()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isPortConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isContractEstablished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSourceConnected()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isPortConnected()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->isContractEstablished()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_1

    goto :goto_0
.end method

.method public update([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/PDStatus;->mPdStatus:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
