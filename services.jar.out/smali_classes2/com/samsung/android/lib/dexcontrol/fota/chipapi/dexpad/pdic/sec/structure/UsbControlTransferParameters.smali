.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;
.super Ljava/lang/Object;
.source "UsbControlTransferParameters.java"


# instance fields
.field private final TIME_OUT:I

.field private buffer:[B

.field private index:I

.field private length:I

.field private request:I

.field private requestType:I

.field private timeout:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->TIME_OUT:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->TIME_OUT:I

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->requestType:I

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->request:I

    iput p3, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->value:I

    iput p4, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->index:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->timeout:I

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;-><init>(IIII)V

    iput-object p5, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->buffer:[B

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->length:I

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->buffer:[B

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->length:I

    return v0
.end method

.method public getRequest()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->request:I

    return v0
.end method

.method public getRequestType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->requestType:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->timeout:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->value:I

    return v0
.end method

.method public setBuffer([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->buffer:[B

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->index:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->length:I

    return-void
.end method

.method public setRequest(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->request:I

    return-void
.end method

.method public setRequestType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->requestType:I

    return-void
.end method

.method public setTimeout()V
    .locals 1

    const/16 v0, 0x1388

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->timeout:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->timeout:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->requestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->request:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->buffer:[B

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/structure/UsbControlTransferParameters;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
