.class Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->selectWfdBroker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayAdapter;->-get2()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.wfdbroker"

    const-string/jumbo v4, "com.sec.android.app.wfdbroker.WfdBroker"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$userId:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-interface {v2, v0, v4, v5, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    const-string/jumbo v3, "WifiDisplayAdapter"

    const-string/jumbo v4, "SEP version is over 8.5, then remove previous WfdBroker"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiDisplayAdapter"

    const-string/jumbo v4, "WfdBroker Component not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
