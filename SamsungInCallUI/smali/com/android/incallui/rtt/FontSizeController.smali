.class public Lcom/android/incallui/rtt/FontSizeController;
.super Ljava/lang/Object;


# static fields
.field public static final FONT_SIZE_INDEX_EXTRA_HUGE_1_11_STEP:I = 0x8

.field public static final FONT_SIZE_INDEX_EXTRA_HUGE_2_11_STEP:I = 0x9

.field public static final FONT_SIZE_INDEX_EXTRA_HUGE_3_11_STEP:I = 0xa

.field public static final FONT_SIZE_INDEX_EXTRA_HUGE_4_11_STEP:I = 0xb

.field public static final FONT_SIZE_INDEX_EXTRA_LARGE_11_STEP:I = 0x6

.field public static final FONT_SIZE_INDEX_EXTRA_SMALL_11_STEP:I = 0x2

.field public static final FONT_SIZE_INDEX_FOLLOW_SYSTEM:I = 0x0

.field public static final FONT_SIZE_INDEX_HUGE:I = 0x5

.field public static final FONT_SIZE_INDEX_HUGE_11_STEP:I = 0x7

.field public static final FONT_SIZE_INDEX_LARGE:I = 0x4

.field public static final FONT_SIZE_INDEX_LARGE_11_STEP:I = 0x5

.field public static final FONT_SIZE_INDEX_MEDIUM_11_STEP:I = 0x4

.field public static final FONT_SIZE_INDEX_NORMAL:I = 0x3

.field public static final FONT_SIZE_INDEX_SMALL:I = 0x2

.field public static final FONT_SIZE_INDEX_SMALL_11_STEP:I = 0x3

.field public static final FONT_SIZE_INDEX_TINY:I = 0x1

.field public static final FONT_SIZE_INDEX_TINY_11_STEP:I = 0x1

.field private static final FONT_SIZE_LIST_TITLE:F = 17.0f

.field private static final FONT_SIZE_NAME_11_STEP_DEFAULT:Ljava/lang/String; = "Small"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_HUGE_1:Ljava/lang/String; = "Extra Huge 1"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_HUGE_2:Ljava/lang/String; = "Extra Huge 2"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_HUGE_3:Ljava/lang/String; = "Extra Huge 3"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_HUGE_4:Ljava/lang/String; = "Extra Huge 4"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_LARGE:Ljava/lang/String; = "Extra large"

.field private static final FONT_SIZE_NAME_11_STEP_EXTRA_SMALL:Ljava/lang/String; = "Extra small"

.field private static final FONT_SIZE_NAME_11_STEP_HUGE:Ljava/lang/String; = "Huge"

.field private static final FONT_SIZE_NAME_11_STEP_LARGE:Ljava/lang/String; = "Large"

.field private static final FONT_SIZE_NAME_11_STEP_MEDIUM:Ljava/lang/String; = "Medium"

.field private static final FONT_SIZE_NAME_11_STEP_SMALL:Ljava/lang/String; = "Small"

.field private static final FONT_SIZE_NAME_11_STEP_TINY:Ljava/lang/String; = "Tiny"

.field private static final FONT_SIZE_NAME_FOLLOW_SYTEM:Ljava/lang/String; = "Follow system font size"

.field private static final FONT_SIZE_RATE_11_STEP:[F

.field public static final FONT_SIZE_TYPE_LIST_TITLE:I = 0x6

.field public static final MESSAGE_FONT_SIZE_11_SETP:I = 0xb

.field public static final MESSAGE_FONT_SIZE_7_SETP:I = 0x7

.field public static final PREF_MESSAGE_FONT_SIZE_NAME:Ljava/lang/String; = "pref_key_font_size"

.field public static final PREF_MESSAGE_FONT_SIZE_SEEK_BAR_POSITION:Ljava/lang/String; = "pref_key_font_size_seek_bar_position"

.field private static final TAG:Ljava/lang/String; = "FontSizeController"

.field private static fontSizeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableFontSize11Step:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rtt/FontSizeController;->sEnableFontSize11Step:Z

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/rtt/FontSizeController;->FONT_SIZE_RATE_11_STEP:[F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/incallui/rtt/FontSizeController;->fontSizeCache:Landroid/util/SparseArray;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3faccccd    # 1.35f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x400ccccd    # 2.2f
        0x40200000    # 2.5f
        0x4039999a    # 2.9f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableSupport11StepFontSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getFontSize(II)F
    .locals 3

    sget-object v0, Lcom/android/incallui/rtt/FontSizeController;->fontSizeCache:Landroid/util/SparseArray;

    shl-int/lit8 v1, p0, 0x8

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/incallui/rtt/FontSizeController;->getFontSize11StepInternal(II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/rtt/FontSizeController;->fontSizeCache:Landroid/util/SparseArray;

    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static getFontSize11StepInternal(II)F
    .locals 2

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {p0}, Lcom/android/incallui/rtt/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v1

    aget v1, v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getFontSizeRateArray(I)[F
    .locals 2

    sget-object v0, Lcom/android/incallui/rtt/FontSizeController;->FONT_SIZE_RATE_11_STEP:[F

    invoke-static {}, Lcom/android/incallui/rtt/FontSizeController;->getEnableSupport11StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/incallui/rtt/FontSizeController;->FONT_SIZE_RATE_11_STEP:[F

    :cond_0
    return-object v0
.end method

.method public static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0xb

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/android/incallui/rtt/FontSizeController;->getEnableSupport11StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
