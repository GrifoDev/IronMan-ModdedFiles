.class public Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;
.super Ljava/lang/Object;
.source "CyacdImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;
    }
.end annotation


# static fields
.field public static final APP_FW_IMAGE_1:I = 0x1

.field public static final APP_FW_IMAGE_2:I = 0x2

.field public static final CCGX_APP_FW_IMAGE_SIGNATURE_IMAGE_1:I = 0xff

.field public static final CCGX_APP_FW_IMAGE_SIGNATURE_IMAGE_2:I = 0xfe

.field public static final CCGX_APP_FW_IMAGE_SIGNATURE_MASK:I = 0xff

.field private static final CYACD_IMAGE_HEAD_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CyacdImage"


# instance fields
.field private mImageFilePath:Ljava/lang/String;

.field private mImageHeader:[B

.field private mImageRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIsValid:Z

.field private mSiliconId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v9, ""

    iput-object v9, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageFilePath:Ljava/lang/String;

    iput-boolean v10, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mIsValid:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    const/4 v7, -0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CyacdImage instance initializing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CyacdImage"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/util/Utils;->isFileExist(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v5, :cond_3

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    array-length v9, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v9, "CyacdImage"

    const-string/jumbo v10, "invalid cyacd image file path, or don\'t have the right to read"

    invoke-static {v9, v10}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to open the cyacd file. filePath="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CyacdImage"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, v8}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->parseStringRecordLine(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageFilePath:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mIsValid:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the cyacd file not found. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CyacdImage"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to read line from the cyacd file. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CyacdImage"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CyacdImage"

    invoke-static {v10, v9}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getRecordDataSize([B)I
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static getRecordRowNum([B)I
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private headStringConverter(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    new-array v1, v4, [B

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    :cond_0
    return-object v1

    :cond_1
    if-ge v0, v3, :cond_0

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private parseStringRecordLine(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const-string/jumbo v1, "CyacdImage"

    const-string/jumbo v2, "invalid record string:"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CyacdImage"

    invoke-static {v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordStringConverter(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return v3

    :cond_1
    const-string/jumbo v1, "CyacdImage"

    const-string/jumbo v2, "invalid record string:"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CyacdImage"

    invoke-static {v1, p1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_2
    const-string/jumbo v1, "CyacdImage"

    const-string/jumbo v2, "failed to covnerted record data"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->headStringConverter(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    goto :goto_0
.end method

.method private recordStringConverter(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;
    .locals 16

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;)V

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v3, v11, 0xff

    add-int/lit8 v7, v3, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v9, v11, 0xff

    add-int/2addr v7, v9

    const/4 v11, 0x5

    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v10, v11, 0xff

    add-int/2addr v7, v10

    shl-int/lit8 v11, v9, 0x8

    or-int/2addr v11, v10

    iput v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->rowNum:I

    const/4 v11, 0x7

    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v9, v11, 0xff

    add-int/2addr v7, v9

    const/16 v11, 0x9

    const/16 v12, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v10, v11, 0xff

    add-int/2addr v7, v10

    shl-int/lit8 v11, v9, 0x8

    or-int/2addr v11, v10

    iput v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    add-int/lit8 v11, v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v2, v11, 0xff

    iget v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    if-nez v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invalid data size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "CyacdImage"

    invoke-static {v12, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return-object v11

    :cond_1
    iget v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    rem-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_0

    iget v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    new-array v11, v11, [B

    iput-object v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    const/16 v1, 0xb

    const/4 v4, 0x0

    :goto_0
    iget v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    if-lt v4, v11, :cond_3

    :cond_2
    and-int/lit16 v11, v7, 0xff

    xor-int/lit16 v11, v11, 0xff

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v7, v11, 0xff

    if-ne v2, v7, :cond_4

    return-object v6

    :cond_3
    if-ge v1, v5, :cond_2

    add-int/lit8 v11, v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    const/16 v12, 0x10

    invoke-static {v8, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    iget-object v11, v6, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->data:[B

    aget-byte v11, v11, v4

    add-int/2addr v7, v11

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "invalid calculated checksum=0x%02x, checksum=0x%04x"

    const-string/jumbo v14, "CyacdImage"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v11, v15

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    return-object v11
.end method


# virtual methods
.method public getImageRecord(I)Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;
    .locals 1

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    return-object v0
.end method

.method public getImageType()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->metaDataRowNum()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x2

    return v2
.end method

.method public imageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mIsValid:Z

    return v0
.end method

.method public metaDataRowNum()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    iget v0, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->rowNum:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recordCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public recordDataSize()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->recordCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;

    iget v0, v0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage$CyacdRecord;->dataSize:I

    return v0

    :cond_0
    return v2
.end method

.method public siliconId()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipapi/dexpad/pdic/sec/CyacdImage;->mImageHeader:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return v2
.end method
