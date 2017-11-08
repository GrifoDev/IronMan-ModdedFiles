.class public Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/StickerSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerOrderInfo"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public isChecked:Z

.field public isPreload:Z

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/agif/StickerSettingActivity;

.field public title:Ljava/lang/String;

.field public trayIconOff:Landroid/graphics/Bitmap;

.field public trayIconOn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/StickerSettingActivity;Ljava/lang/String;Ljava/lang/String;[B[BZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->this$0:Lcom/android/incallui/agif/StickerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOff:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->artist:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->packageName:Ljava/lang/String;

    array-length v0, p4

    invoke-static {p4, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    array-length v0, p5

    invoke-static {p5, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOff:Landroid/graphics/Bitmap;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v3, :cond_1

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->title:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->artist:Ljava/lang/String;

    :cond_0
    :goto_0
    iput-boolean p6, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isPreload:Z

    iput-boolean p7, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->isChecked:Z

    return-void

    :cond_1
    iput-object p3, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->artist:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOn:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOff:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/StickerSettingActivity$StickerOrderInfo;->trayIconOff:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
