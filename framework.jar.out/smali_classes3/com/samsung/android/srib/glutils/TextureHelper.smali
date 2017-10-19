.class public Lcom/samsung/android/srib/glutils/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/content/Context;Landroid/graphics/Bitmap;Z)I
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    new-array v0, v2, [I

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p1, :cond_1

    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2703

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v4, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    if-nez p2, :cond_2

    :goto_0
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v0, v0, v3

    return v0

    :cond_0
    return v3

    :cond_1
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
