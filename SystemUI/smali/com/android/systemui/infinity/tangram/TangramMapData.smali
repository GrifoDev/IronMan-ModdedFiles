.class public Lcom/android/systemui/infinity/tangram/TangramMapData;
.super Ljava/lang/Object;
.source "TangramMapData.java"


# instance fields
.field public VERTEX_DATA:[[F

.field public bottomLayerImage:[Z

.field public endTranslation:[[F

.field public initTranslation:[[F

.field public layerFixAlpha:[F

.field public layerName:[Ljava/lang/String;

.field public layerPosition:[[F

.field public layerSize:[[F

.field public mapLayerFileName:[Ljava/lang/String;

.field public mapLeftFileName:[Ljava/lang/String;

.field public mapMaskFileName:[Ljava/lang/String;

.field public mapRightFileName:[Ljava/lang/String;

.field public maskMoveDistance:[[F

.field public maskPosition:[[F

.field public maskSize:[[F

.field public objectType:I

.field public previewHeight:F

.field public previewWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-void
.end method
