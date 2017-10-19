.class final synthetic Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startOtherServices__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$disableBluetooth:Z

.field private synthetic val$isEmulator:Z

.field private synthetic val$this:Lcom/android/server/SystemServer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;ZLandroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$this:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$isEmulator:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$disableBluetooth:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$this:Lcom/android/server/SystemServer;

    iget-boolean v1, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$isEmulator:Z

    iget-object v2, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/SystemServer$-void_startOtherServices__LambdaImpl0;->val$disableBluetooth:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SystemServer;->-com_android_server_SystemServer_lambda$2(ZLandroid/content/Context;Z)V

    return-void
.end method
