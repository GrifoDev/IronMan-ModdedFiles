.class Lcom/android/incallui/agif/StickerCenterManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/StickerCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/StickerCenterManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/StickerCenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerCenterManager$1;->this$0:Lcom/android/incallui/agif/StickerCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager$1;->this$0:Lcom/android/incallui/agif/StickerCenterManager;

    invoke-static {p2}, Lcom/samsung/android/b/a$a;->a(Landroid/os/IBinder;)Lcom/samsung/android/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerCenterManager;->access$002(Lcom/android/incallui/agif/StickerCenterManager;Lcom/samsung/android/b/a;)Lcom/samsung/android/b/a;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager$1;->this$0:Lcom/android/incallui/agif/StickerCenterManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/incallui/agif/StickerCenterManager;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "StickerCenterManager"

    const-string v1, "Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager$1;->this$0:Lcom/android/incallui/agif/StickerCenterManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/agif/StickerCenterManager;->access$002(Lcom/android/incallui/agif/StickerCenterManager;Lcom/samsung/android/b/a;)Lcom/samsung/android/b/a;

    iget-object v0, p0, Lcom/android/incallui/agif/StickerCenterManager$1;->this$0:Lcom/android/incallui/agif/StickerCenterManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/agif/StickerCenterManager;->mBound:Z

    return-void
.end method
