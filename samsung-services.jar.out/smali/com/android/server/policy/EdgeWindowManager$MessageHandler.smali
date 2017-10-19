.class Lcom/android/server/policy/EdgeWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "EdgeWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EdgeWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EdgeWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/EdgeWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/EdgeWindowManager;Lcom/android/server/policy/EdgeWindowManager$MessageHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/EdgeWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/policy/EdgeWindowManager;->-set0(Lcom/android/server/policy/EdgeWindowManager;Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get0(Lcom/android/server/policy/EdgeWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->getCocktaiBarWakeUpStateFromWindowManager()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/EdgeWindowManager;->requestCocktailRotationAnimation(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->wakupCocktailBarFromWindowManager(ZII)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->updateSysfsGripDisableFromWindowManager(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
