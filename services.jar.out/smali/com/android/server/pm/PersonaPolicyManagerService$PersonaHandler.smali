.class Lcom/android/server/pm/PersonaPolicyManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->-wrap2(Lcom/android/server/pm/PersonaPolicyManagerService;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
