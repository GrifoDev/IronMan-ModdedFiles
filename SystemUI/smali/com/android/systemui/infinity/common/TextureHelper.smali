.class public Lcom/android/systemui/infinity/common/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 8

    const/16 v7, 0x2601

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    new-array v2, v6, [I

    invoke-static {v6, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v2, v4

    if-nez v3, :cond_0

    return v4

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v6, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v4

    :cond_1
    aget v3, v2, v4

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    invoke-static {v5, v3, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    invoke-static {v5, v3, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v3, v2, v4

    return v3
.end method
