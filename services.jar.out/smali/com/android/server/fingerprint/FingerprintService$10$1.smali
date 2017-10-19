.class Lcom/android/server/fingerprint/FingerprintService$10$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$10;->handleTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$10;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$10$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$10$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$10;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$10$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$10;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$10;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get6(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    return-void
.end method
