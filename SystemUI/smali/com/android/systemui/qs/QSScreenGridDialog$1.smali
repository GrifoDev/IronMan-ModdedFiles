.class Lcom/android/systemui/qs/QSScreenGridDialog$1;
.super Ljava/lang/Object;
.source "QSScreenGridDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSScreenGridDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    iput-object p2, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get2(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4, v6}, Lcom/android/systemui/qs/QSScreenGridDialog;->-wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-set0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/View;)Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v5, v4, v7}, Lcom/android/systemui/qs/QSScreenGridDialog;->-wrap0(Lcom/android/systemui/qs/QSScreenGridDialog;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f130052

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f130053

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f130051

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_column"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_column_landscape"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v4

    const-string/jumbo v5, "qs_tile_row"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "X3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v6, "QS22"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get1(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "2"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "2098"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "2098"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridDialog$1;->this$0:Lcom/android/systemui/qs/QSScreenGridDialog;

    invoke-static {v4}, Lcom/android/systemui/qs/QSScreenGridDialog;->-get0(Lcom/android/systemui/qs/QSScreenGridDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "3"

    goto :goto_0
.end method
