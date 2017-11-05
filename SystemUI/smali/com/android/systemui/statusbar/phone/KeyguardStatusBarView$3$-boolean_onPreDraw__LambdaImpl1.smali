.class final synthetic Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3$-boolean_onPreDraw__LambdaImpl1;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_onPreDraw__LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3$-boolean_onPreDraw__LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3$-boolean_onPreDraw__LambdaImpl1;->val$this:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->-com_android_systemui_statusbar_phone_KeyguardStatusBarView$3_lambda$2()V

    return-void
.end method
