.class Lcom/android/launcher3/allapps/view/AppsPagedView$5;
.super Ljava/lang/Object;
.source "AppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayoutByConfigurationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$5;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$5;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->access$202(Lcom/android/launcher3/allapps/view/AppsPagedView;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$5;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->requestLayout()V

    return-void
.end method
