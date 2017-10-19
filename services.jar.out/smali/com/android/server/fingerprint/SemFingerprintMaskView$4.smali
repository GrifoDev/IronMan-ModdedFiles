.class Lcom/android/server/fingerprint/SemFingerprintMaskView$4;
.super Landroid/view/OrientationEventListener;
.source "SemFingerprintMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/SemFingerprintMaskView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/SemFingerprintMaskView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/SemFingerprintMaskView$4;->this$0:Lcom/android/server/fingerprint/SemFingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/SemFingerprintMaskView;->-wrap2(Lcom/android/server/fingerprint/SemFingerprintMaskView;)V

    return-void
.end method
