.class Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityDisplayListener"
.end annotation


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-static {v2}, Lcom/android/incallui/ProximitySensor;->access$200(Lcom/android/incallui/ProximitySensor;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-static {v1, v0}, Lcom/android/incallui/ProximitySensor;->access$202(Lcom/android/incallui/ProximitySensor;Z)Z

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-static {v1}, Lcom/android/incallui/ProximitySensor;->access$200(Lcom/android/incallui/ProximitySensor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ProximitySensor;->onDisplayStateChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
