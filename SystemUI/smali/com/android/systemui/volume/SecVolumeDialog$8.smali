.class Lcom/android/systemui/volume/SecVolumeDialog$8;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v1

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get45(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v1

    if-eq v1, p4, :cond_3

    if-eqz p4, :cond_5

    const v0, 0x7f0207df

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    if-nez p4, :cond_2

    if-nez p3, :cond_7

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get20(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set17(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set16(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1, p4}, Lcom/android/systemui/volume/SecVolumeDialog;->-set25(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get28(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    const v0, 0x7f0207df

    goto :goto_1

    :cond_6
    const v0, 0x7f0207dd

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get19(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-get44(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method
