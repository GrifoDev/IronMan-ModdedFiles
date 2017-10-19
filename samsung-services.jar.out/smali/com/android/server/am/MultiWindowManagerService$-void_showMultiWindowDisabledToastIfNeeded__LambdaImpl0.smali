.class final synthetic Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;->val$this:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;->val$this:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->-com_android_server_am_MultiWindowManagerService_lambda$1()V

    return-void
.end method
