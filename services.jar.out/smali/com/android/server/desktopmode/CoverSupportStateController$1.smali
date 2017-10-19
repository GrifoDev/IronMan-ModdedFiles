.class Lcom/android/server/desktopmode/CoverSupportStateController$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get3(Lcom/android/server/desktopmode/CoverSupportStateController;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set0(Lcom/android/server/desktopmode/CoverSupportStateController;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap0(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    return-void
.end method
