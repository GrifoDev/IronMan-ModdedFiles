.class Lcom/android/server/am/MultiWindowManagerService$6;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;->minimizeMaxCountingFreeformLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;

.field final synthetic val$maxFreeformCnt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$6;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iput p2, p0, Lcom/android/server/am/MultiWindowManagerService$6;->val$maxFreeformCnt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$6;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$6;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v3}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text_in_desktop:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService$6;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v4}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget v3, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService$6;->val$maxFreeformCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
