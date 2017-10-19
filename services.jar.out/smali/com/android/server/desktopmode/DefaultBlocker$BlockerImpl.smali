.class Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
.super Ljava/lang/Object;
.source "DefaultBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DefaultBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockerImpl"
.end annotation


# instance fields
.field reasonCode:I

.field final synthetic this$0:Lcom/android/server/desktopmode/DefaultBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->-get0(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBlockingMessage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    sparse-switch v1, :sswitch_data_0

    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unavailable_mode:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/DefaultBlocker;->-get1(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_mid_power_saving:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_safe_mode:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_multiuser_mode:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
