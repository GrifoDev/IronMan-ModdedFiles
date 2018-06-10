.class public Lcom/samsung/android/lib/dexcontrol/fota/data/ChipInfoBase;
.super Ljava/lang/Object;
.source "ChipInfoBase.java"


# instance fields
.field public chipName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/data/ChipInfoBase;->chipName:Ljava/lang/String;

    return-void
.end method
