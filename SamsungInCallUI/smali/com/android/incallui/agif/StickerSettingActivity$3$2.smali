.class Lcom/android/incallui/agif/StickerSettingActivity$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/StickerSettingActivity$3;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$2;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_mode_close_button"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$3$2;->this$1:Lcom/android/incallui/agif/StickerSettingActivity$3;

    iget-object v1, v1, Lcom/android/incallui/agif/StickerSettingActivity$3;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/StickerSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
