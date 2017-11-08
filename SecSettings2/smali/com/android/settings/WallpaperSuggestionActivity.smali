.class public Lcom/android/settings/WallpaperSuggestionActivity;
.super Landroid/app/Activity;
.source "WallpaperSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x7f0b0231

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0232

    invoke-virtual {p0, v3}, Lcom/android/settings/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/WallpaperSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSuggestionActivity;->finish()V

    return-void
.end method
