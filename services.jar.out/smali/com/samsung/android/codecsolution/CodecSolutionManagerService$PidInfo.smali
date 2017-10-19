.class public Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;
.super Ljava/lang/Object;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PidInfo"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public packageName:Ljava/lang/String;

.field public pid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->date:Ljava/util/Date;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    iput-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->packageName:Ljava/lang/String;

    return-void
.end method
