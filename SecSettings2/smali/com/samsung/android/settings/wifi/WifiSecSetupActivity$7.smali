.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->makeSpannableTextForChangeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setCurrentBixbyMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    return-void
.end method
