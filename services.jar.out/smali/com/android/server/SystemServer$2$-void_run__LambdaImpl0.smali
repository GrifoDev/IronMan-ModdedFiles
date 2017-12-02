.class final synthetic Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_run__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/SystemServer$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;->val$this:Lcom/android/server/SystemServer$2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;->val$this:Lcom/android/server/SystemServer$2;

    invoke-virtual {v0}, Lcom/android/server/SystemServer$2;->-com_android_server_SystemServer$2_lambda$2()V

    return-void
.end method
