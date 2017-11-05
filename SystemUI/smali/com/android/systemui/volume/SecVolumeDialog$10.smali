.class Lcom/android/systemui/volume/SecVolumeDialog$10;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get39(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set22(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get41(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get40(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set12(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    goto :goto_0
.end method
