.class Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiscreen/MultiScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multiscreen/MultiScreenSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiscreen/MultiScreenSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    const-string/jumbo v1, "MultiScreenSettings"

    const-string/jumbo v2, "observe()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-static {v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->-get0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dualview_inputmethod_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-static {v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->-wrap0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-static {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->-wrap0(Lcom/samsung/android/multiscreen/MultiScreenSettings;)V

    return-void
.end method
