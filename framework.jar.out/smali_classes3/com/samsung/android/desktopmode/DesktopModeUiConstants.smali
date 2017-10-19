.class public Lcom/samsung/android/desktopmode/DesktopModeUiConstants;
.super Ljava/lang/Object;
.source "DesktopModeUiConstants.java"


# static fields
.field public static final ACTION_DESKTOP_MODE_UPDATE_REQUEST:Ljava/lang/String; = "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

.field public static final ACTION_TOUCHPAD_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

.field private static final DIALOG_END:I = 0x63

.field private static final DIALOG_START:I = 0x0

.field public static final DIALOG_TYPE_ANY:I = 0x0

.field public static final DIALOG_TYPE_DISPLAY_UNSUPPORT:I = 0x7

.field public static final DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING:I = 0x1

.field public static final DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION:I = 0x2

.field public static final DIALOG_TYPE_PROMOTION_DOCK:I = 0x5

.field public static final DIALOG_TYPE_PROMOTION_MOUSE:I = 0x4

.field public static final DIALOG_TYPE_TOUCHPAD:I = 0x6

.field public static final EXTRA_DESKTOP_MODE_STATE:Ljava/lang/String; = "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

.field public static final EXTRA_DESKTOP_MODE_STATE_DEFAULT:I = -0x1

.field public static final EXTRA_DESKTOP_MODE_STATE_DISABLED:I = 0x2

.field public static final EXTRA_DESKTOP_MODE_STATE_ENABLED:I = 0x1

.field public static final EXTRA_DESKTOP_MODE_STATE_UPDATE:I = 0x0

.field private static final NOTIFICATION_START:I = 0xc8

.field public static final NOTIFICATION_TYPE_ONGOING_AVAILABLE:I = 0xc9

.field public static final NOTIFICATION_TYPE_ONGOING_AVAILABLE_FIRST:I = 0xc8

.field public static final NOTIFICATION_TYPE_ONGOING_CAMERA_UNSUPPORT:I = 0xcc

.field public static final NOTIFICATION_TYPE_ONGOING_USING:I = 0xca

.field public static final NOTIFICATION_TYPE_TOUCHPAD:I = 0xcb

.field private static final PRESENTATION_START:I = 0x64

.field public static final PRESENTATION_TYPE_ANY:I = 0x6e

.field public static final PRESENTATION_TYPE_BLACK_SCREEN:I = 0x72

.field public static final PRESENTATION_TYPE_INTRO:I = 0x6f

.field public static final PRESENTATION_TYPE_LOADING_SCREEN_ENTER:I = 0x70

.field public static final PRESENTATION_TYPE_LOADING_SCREEN_EXIT:I = 0x71

.field public static final PRESENTATION_WHERE_ALL:I = 0x64

.field public static final PRESENTATION_WHERE_ANY:I = 0x65

.field public static final PRESENTATION_WHERE_EXTERNAL:I = 0x67

.field public static final PRESENTATION_WHERE_INTERNAL:I = 0x66

.field public static final UI_TYPE_NONE:I = -0x1

.field private static final VIRTUAL_DEVICE_START:I = 0x12c

.field public static final VIRTUAL_DEVICE_TOUCHPAD_DOCK_MODE:I = 0x12d

.field public static final VIRTUAL_DEVICE_TOUCHPAD_IRIS_MODE:I = 0x12e

.field public static final VIRTUAL_DEVICE_TOUCHPAD_NORMAL_MODE:I = 0x12c

.field public static final VIRTUAL_DEVICE_TYPE_TOUCHPAD:I = 0x136


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDialogType(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x63

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "UI_TYPE_NONE"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "DIALOG_TYPE_ANY"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_MIRRORING"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION_PRESENTATION"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION_MOUSE"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION_DOCK"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "DIALOG_TYPE_TOUCHPAD"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "DIALOG_TYPE_DISPLAY_UNSUPPORT"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "PRESENTATION_TYPE_ANY"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "PRESENTATION_TYPE_INTRO"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "PRESENTATION_TYPE_LOADING_SCREEN_ENTER"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "PRESENTATION_TYPE_LOADING_SCREEN_EXIT"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "PRESENTATION_TYPE_BLACK_SCREEN"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_AVAILABLE_FIRST"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_AVAILABLE"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "NOTIFICATION_TYPE_ONGOING_USING"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "NOTIFICATION_TYPE_TOUCHPAD"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_a
        0x71 -> :sswitch_b
        0x72 -> :sswitch_c
        0xc8 -> :sswitch_d
        0xc9 -> :sswitch_e
        0xca -> :sswitch_f
        0xcb -> :sswitch_10
    .end sparse-switch
.end method
