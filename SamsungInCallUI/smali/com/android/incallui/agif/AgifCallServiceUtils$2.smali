.class final Lcom/android/incallui/agif/AgifCallServiceUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifCallServiceUtils;->deleteStickerRecent(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$notifyUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifCallServiceUtils$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/incallui/agif/AgifCallServiceUtils$2;->val$notifyUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifCallServiceUtils$2;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifCallServiceUtils$2;->val$notifyUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
