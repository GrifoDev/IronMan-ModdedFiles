.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;
.super Ljava/lang/Object;
.source "NfcOsaifukeitaiSettingsKDI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    const/16 v3, 0x100

    if-eq v1, v3, :cond_0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I

    move-result v3

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string/jumbo v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v4, "get UIMLock status T.O. timer end "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->checkUIMSupport()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-set1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->-wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V

    const-string/jumbo v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v4, "[E]uimDetectAction"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
