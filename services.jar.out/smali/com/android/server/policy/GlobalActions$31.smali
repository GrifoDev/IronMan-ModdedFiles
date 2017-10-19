.class Lcom/android/server/policy/GlobalActions$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->confirmeAction(Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$31;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$31;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$31;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    return-void
.end method
