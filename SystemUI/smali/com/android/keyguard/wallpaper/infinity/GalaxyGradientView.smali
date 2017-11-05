.class public Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;
.super Landroid/view/View;
.source "GalaxyGradientView.java"


# instance fields
.field gradient:Landroid/graphics/LinearGradient;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->invalidate()V

    return-void
.end method

.method public setGradient(FFFF[I[F)V
    .locals 8

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyGradientView;->invalidate()V

    return-void
.end method
