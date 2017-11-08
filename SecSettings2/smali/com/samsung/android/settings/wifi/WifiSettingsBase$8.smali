.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;
.super Landroid/database/ContentObserver;
.source "WifiSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap11(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    :cond_0
    return-void
.end method
