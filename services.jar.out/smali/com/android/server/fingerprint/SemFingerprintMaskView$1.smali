.class Lcom/android/server/fingerprint/SemFingerprintMaskView$1;
.super Ljava/lang/Object;
.source "SemFingerprintMaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/SemFingerprintMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-wrap5(Lcom/android/server/fingerprint/SemFingerprintMaskView;IZ)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/class/fingerprint/fingerprint/hbm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "1"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-wrap0(Lcom/android/server/fingerprint/SemFingerprintMaskView;Ljava/io/File;[B)Z

    return-void
.end method
