.class Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;
.super Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
.source "OpenGLES2WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/OpenGLES2WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenGLES2Engine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/OpenGLES2WallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;-><init>(Lcom/android/systemui/infinity/GLWallpaperService;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setEGLContextClientVersion(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setPreserveEGLContextOnPause(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    iget-object v1, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    iget-object v2, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->getNewRenderer(Landroid/opengl/GLSurfaceView;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iget-object v0, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->this$0:Lcom/android/systemui/infinity/OpenGLES2WallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->setVisible(Z)V

    return-void
.end method
