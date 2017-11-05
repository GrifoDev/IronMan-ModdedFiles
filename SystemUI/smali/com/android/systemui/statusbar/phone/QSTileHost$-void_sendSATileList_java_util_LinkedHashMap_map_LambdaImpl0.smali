.class final synthetic Lcom/android/systemui/statusbar/phone/QSTileHost$-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private synthetic val$tileStr:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0;->val$tileStr:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_sendSATileList_java_util_LinkedHashMap_map_LambdaImpl0;->val$tileStr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-com_android_systemui_statusbar_phone_QSTileHost_lambda$3(Ljava/lang/StringBuilder;)V

    return-void
.end method
