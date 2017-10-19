.class Lcom/android/server/pm/PackageManagerService$MeasureParams$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$MeasureParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$MeasureParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$MeasureParams;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$MeasureParams;->-wrap0(Lcom/android/server/pm/PackageManagerService$MeasureParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
