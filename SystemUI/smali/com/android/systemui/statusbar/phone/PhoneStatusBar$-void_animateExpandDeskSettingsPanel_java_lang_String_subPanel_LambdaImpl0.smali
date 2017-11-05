.class final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$subPanel:Ljava/lang/String;

.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0;->val$subPanel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-void_animateExpandDeskSettingsPanel_java_lang_String_subPanel_LambdaImpl0;->val$subPanel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-com_android_systemui_statusbar_phone_PhoneStatusBar_lambda$4(Ljava/lang/String;)V

    return-void
.end method
