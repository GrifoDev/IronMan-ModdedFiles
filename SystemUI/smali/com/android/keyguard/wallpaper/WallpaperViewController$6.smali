.class Lcom/android/keyguard/wallpaper/WallpaperViewController$6;
.super Landroid/os/AsyncTask;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;->updateGradientColors(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isLiveWallpaper:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->val$isLiveWallpaper:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->val$isLiveWallpaper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get0(Lcom/android/keyguard/wallpaper/WallpaperViewController;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-wrap0(Lcom/android/keyguard/wallpaper/WallpaperViewController;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-wrap1(Lcom/android/keyguard/wallpaper/WallpaperViewController;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-wrap1(Lcom/android/keyguard/wallpaper/WallpaperViewController;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get1(Lcom/android/keyguard/wallpaper/WallpaperViewController;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get1(Lcom/android/keyguard/wallpaper/WallpaperViewController;)[I

    move-result-object v0

    aget v0, v0, v2

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get1(Lcom/android/keyguard/wallpaper/WallpaperViewController;)[I

    move-result-object v0

    aget v0, v0, v3

    aget v1, p1, v3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get1(Lcom/android/keyguard/wallpaper/WallpaperViewController;)[I

    move-result-object v0

    aget v1, p1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get1(Lcom/android/keyguard/wallpaper/WallpaperViewController;)[I

    move-result-object v0

    aget v1, p1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$6;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-get2(Lcom/android/keyguard/wallpaper/WallpaperViewController;)Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperCallback;->onWallpaperChanged([I)V

    :cond_0
    return-void
.end method
