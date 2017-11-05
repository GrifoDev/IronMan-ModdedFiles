.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/EmSystemUIManager$BixbySystemUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setUpBixby()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callMultiWindowManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->createInterimStateListener()V

    :cond_0
    return-void
.end method

.method public callNotificationHandleStartState(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->handleStartState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public callNotificationManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bixby/EmNotificationManager;->createInterimStateListener()V

    :cond_0
    return-void
.end method

.method public callPreProcessSingleState(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/multiwindow/bixby/EmMultiWindowManager;->preProcessSingleState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public callRecentsManager(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->createInterimStateListener()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$102;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get28(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->handleStartState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
