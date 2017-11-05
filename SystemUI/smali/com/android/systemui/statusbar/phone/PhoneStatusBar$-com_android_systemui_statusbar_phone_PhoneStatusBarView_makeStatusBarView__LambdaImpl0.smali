.class final synthetic Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-com_android_systemui_statusbar_phone_PhoneStatusBarView_makeStatusBarView__LambdaImpl0;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-com_android_systemui_statusbar_phone_PhoneStatusBarView_makeStatusBarView__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-com_android_systemui_statusbar_phone_PhoneStatusBarView_makeStatusBarView__LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$-com_android_systemui_statusbar_phone_PhoneStatusBarView_makeStatusBarView__LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-com_android_systemui_statusbar_phone_PhoneStatusBar_lambda$1(Landroid/view/View;)V

    return-void
.end method
