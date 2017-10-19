.class Lcom/android/server/policy/GlobalActions$19;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItemView(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$19;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$19;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$19;->val$tempView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/GlobalActions$19;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get75()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$19;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get29(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$19;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get28(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$19;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get48(Lcom/android/server/policy/GlobalActions;)I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$19;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$19;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$19;->val$tempView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/server/policy/GlobalActions$19;->val$isPort:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method
