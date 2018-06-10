.class Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->getFirmwareInfoRequest(Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)Lcom/android/volley/toolbox/StringRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

.field final synthetic val$firmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iput-object p2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->val$firmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$000(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    const-class v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    invoke-virtual {v1, p1, v2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->val$firmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;->onReceiveFirmwareInfo(Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$2;->val$firmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    sget-object v2, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;->XmlDataFormat:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;->onError(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$ErrorType;Ljava/lang/String;)V

    return-void
.end method
