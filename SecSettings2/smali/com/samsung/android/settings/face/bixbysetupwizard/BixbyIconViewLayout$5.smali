.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;
.super Ljava/lang/Object;
.source "BixbyIconViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v3, 0x43fa0000    # 500.0f

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->val$mode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const v2, 0x41accccd    # 21.6f

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->dpToPixel(F)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get3(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->val$mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->dpToPixel(F)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get3(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$5;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->invalidate()V

    goto :goto_0
.end method
