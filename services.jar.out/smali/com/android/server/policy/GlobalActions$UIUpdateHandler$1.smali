.class Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-wrap26(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method
