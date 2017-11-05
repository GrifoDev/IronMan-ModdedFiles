.class Lcom/android/keyguard/wallpaper/WallpaperViewController$4;
.super Ljava/lang/Object;
.source "WallpaperViewController.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/WallpaperViewController$UpdateBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$4;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-wrap2(Lcom/android/keyguard/wallpaper/WallpaperViewController;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
