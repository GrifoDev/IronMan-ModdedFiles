.class Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;
.super Ljava/lang/Object;
.source "SDCFotaManagerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressData"
.end annotation


# instance fields
.field index:I

.field total:I

.field updateType:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->updateType:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->total:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->index:I

    return-void
.end method

.method constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->updateType:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->total:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->index:I

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->updateType:I

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->total:I

    iput p3, p0, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler$ProgressData;->index:I

    return-void
.end method
