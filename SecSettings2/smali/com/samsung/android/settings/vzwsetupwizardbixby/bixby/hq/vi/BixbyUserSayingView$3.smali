.class Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$3;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->startDefaultListeningAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView$3;->this$0:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;->-set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyUserSayingView;F)F

    return-void
.end method
