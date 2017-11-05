.class final synthetic Lcom/android/keyguard/swipe/SwipeDoorsillDetector$-void_unlockExecute__LambdaImpl0;
.super Ljava/lang/Object;
.source "SwipeDoorsillDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/swipe/SwipeDoorsillDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_unlockExecute__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$monitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$-void_unlockExecute__LambdaImpl0;->val$monitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$-void_unlockExecute__LambdaImpl0;->val$monitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->-com_android_keyguard_swipe_SwipeDoorsillDetector_lambda$1(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method
