.class Lcom/android/systemui/AutoReinflateContainer$2;
.super Ljava/lang/Object;
.source "AutoReinflateContainer.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/AutoReinflateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/AutoReinflateContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "show_button_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1}, Lcom/android/systemui/AutoReinflateContainer;->-wrap0(Lcom/android/systemui/AutoReinflateContainer;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "system_locales"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v1}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1}, Lcom/android/systemui/AutoReinflateContainer;->-get2(Lcom/android/systemui/AutoReinflateContainer;)Landroid/os/LocaleList;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1, v0}, Lcom/android/systemui/AutoReinflateContainer;->-set0(Lcom/android/systemui/AutoReinflateContainer;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v1}, Lcom/android/systemui/AutoReinflateContainer;->-wrap0(Lcom/android/systemui/AutoReinflateContainer;)V

    goto :goto_0
.end method
