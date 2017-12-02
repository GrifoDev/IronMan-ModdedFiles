.class public Lcom/android/incallui/rtt/RTTAlertDialogActivity;
.super Landroid/app/Activity;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RTTAlertDialogActivity"

.field private static final PREF_KEY_RTT_WELCOME_POPUP:Ljava/lang/String; = "PREF_KEY_RTT_WELCOME_POPUP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/rtt/RTTAlertDialogActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->neverShowRttWelcomePopup(Landroid/content/Context;)V

    return-void
.end method

.method private createDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04002b

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1000b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090065

    new-instance v5, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/incallui/rtt/RTTAlertDialogActivity$2;-><init>(Lcom/android/incallui/rtt/RTTAlertDialogActivity;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09010f

    new-instance v3, Lcom/android/incallui/rtt/RTTAlertDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity$1;-><init>(Lcom/android/incallui/rtt/RTTAlertDialogActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/android/incallui/rtt/RTTAlertDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity$3;-><init>(Lcom/android/incallui/rtt/RTTAlertDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_0
    const v0, 0x7f04002a

    goto :goto_0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "getSharedPreferences"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private neverShowRttWelcomePopup(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_KEY_RTT_WELCOME_POPUP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldShowRttWelcomePopup(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "shouldShowRttWelcomePopup"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_KEY_RTT_WELCOME_POPUP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->shouldShowRttWelcomePopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->createDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/rtt/RTTAlertDialogActivity;->finish()V

    goto :goto_0
.end method
