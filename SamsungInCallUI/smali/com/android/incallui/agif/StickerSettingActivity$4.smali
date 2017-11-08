.class Lcom/android/incallui/agif/StickerSettingActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/StickerSettingActivity;->showDeleteStickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$4;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$4;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    iget-object v0, v0, Lcom/android/incallui/agif/StickerSettingActivity;->mStickerSettingAdapter:Lcom/android/incallui/agif/StickerSettingAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/agif/StickerSettingAdapter;->deleteCheckedPackages()V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$4;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-static {v0}, Lcom/android/incallui/agif/StickerSettingActivity;->access$200(Lcom/android/incallui/agif/StickerSettingActivity;)V

    return-void
.end method
