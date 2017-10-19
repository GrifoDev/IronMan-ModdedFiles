.class Lcom/android/server/fingerprint/SemFingerprintMaskView$2;
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

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get13(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v1}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-get2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-set0(Lcom/android/server/fingerprint/SemFingerprintMaskView;Lcom/android/server/fingerprint/SemFingerUnlockEffect;)Lcom/android/server/fingerprint/SemFingerUnlockEffect;

    :cond_0
    return-void
.end method
