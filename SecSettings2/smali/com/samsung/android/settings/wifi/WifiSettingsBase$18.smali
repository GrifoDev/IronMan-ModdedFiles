.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initSecureWifiLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$disableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$enableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$openSecureWifiEulaIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$enableSecureWifiIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const v2, 0x7f0b0484

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mCheckBoxSecureWifi is checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap6(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "Secure Wifi Eula is not agreed, launch Eula Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap5(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$enableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap9(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get3(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b12cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap4(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$18;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
