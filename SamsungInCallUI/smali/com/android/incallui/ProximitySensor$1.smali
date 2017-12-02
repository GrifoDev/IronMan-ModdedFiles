.class Lcom/android/incallui/ProximitySensor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/incallui/ProximitySensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-static {v4}, Lcom/android/incallui/ProximitySensor;->access$100(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v3, v0}, Lcom/android/incallui/ProximitySensor;->access$002(Lcom/android/incallui/ProximitySensor;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : mIsProximityCloseDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/ProximitySensor$1;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-static {v2}, Lcom/android/incallui/ProximitySensor;->access$000(Lcom/android/incallui/ProximitySensor;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
