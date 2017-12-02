.class public Lcom/android/server/desktopmode/DesktopModeSettingsManager;
.super Ljava/lang/Object;
.source "DesktopModeSettingsManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.SettingsProvider"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final METHOD_CLEAR:Ljava/lang/String; = "clearSettings"

.field private static final METHOD_GETTER:Ljava/lang/String; = "getSettings"

.field private static final METHOD_SETTER:Ljava/lang/String; = "setSettings"

.field public static final SETTINGS_HDMI_DEFAULT:I = -0x1

.field public static final SETTINGS_HDMI_DESKTOP_MODE:I = 0x0

.field public static final SETTINGS_HDMI_MIRRORING_MODE:I = 0x1

.field public static final SETTINGS_KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_KEY_FIRST_TIME_PROMOTION_DOCK:Ljava/lang/String; = "1st_dock"

.field public static final SETTINGS_KEY_FIRST_TIME_PROMOTION_MOUSE:Ljava/lang/String; = "1st_mouse"

.field public static final SETTINGS_KEY_FONT_ENABLED:Ljava/lang/String; = "dex_enabled_font"

.field public static final SETTINGS_KEY_HDMI:Ljava/lang/String; = "hdmi_mode"

.field public static final SETTINGS_KEY_LABS_ENABLED:Ljava/lang/String; = "labs_enabled"

.field public static final SETTINGS_KEY_LABS_RESIZABLE_WINDOW_ENABLED:Ljava/lang/String; = "labs_resizable_window_enabled"

.field public static final SETTINGS_KEY_LABS_TOUCHPAD_ENABLED:Ljava/lang/String; = "touchpad_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_DEVELOPER_ENABLED:Ljava/lang/String; = "launch_policy_developer_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_MODE:Ljava/lang/String; = "launch_policy_mode"

.field public static final SETTINGS_KEY_MIRRORING_SWITCH_DISABLED:Ljava/lang/String; = "mirroring_switch_disabled"

.field public static final SETTINGS_KEY_MONITOR_CHANGED:Ljava/lang/String; = "monitor_changed"

.field public static final SETTINGS_KEY_MONITOR_INFO:Ljava/lang/String; = "monitor_info"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "timeout_dex"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT_BACKUP:Ljava/lang/String; = "timeout_backup"

.field public static final SETTINGS_KEY_SPEED_LIMIT_BACKUP:Ljava/lang/String; = "speed_limit_backup"

.field public static final SETTINGS_KEY_SPEN_MODE:Ljava/lang/String; = "spen_mode"

.field public static final SETTINGS_KEY_SPEN_MODE_ICON:Ljava/lang/String; = "spen_mode_icon"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD:Ljava/lang/String; = "keyboard_dex"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD_BACKUP:Ljava/lang/String; = "keyboard_backup"

.field public static final SETTINGS_SPEN_INPUT_MODE_MOUSE:I = 0x3

.field public static final SETTINGS_SPEN_INPUT_MODE_MOUSE_IRIS:I = 0x7

.field public static final SETTINGS_SPEN_INPUT_MODE_PHONE:I = 0x0

.field public static final SETTINGS_SPEN_INPUT_MODE_STYLUS:I = 0x2

.field public static final SYSTEM_PROPERTIES_PERSIST_PREFIX:Ljava/lang/String; = "persist.service.dex."

.field public static final SYSTEM_PROPERTIES_SERVICE_PREFIX:Ljava/lang/String; = "service.dex."

.field private static final TAG:Ljava/lang/String;

.field private static sCurrentUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSettingsAsUser(Landroid/content/ContentResolver;I)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "clearSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to clear Dex settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Settings for User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeUtils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "service.dex.dex_enabled_font"

    const-string/jumbo v1, "service.dex.dex_enabled_font"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private static getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "getSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to get settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "def"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "getSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to get settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static getUriAsUser(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice.SettingsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static setCurrentUserId(I)V
    .locals 0

    sput p0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    return-void
.end method

.method static setServiceSettings(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "val"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "setSettings"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to set settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettingsManager;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
