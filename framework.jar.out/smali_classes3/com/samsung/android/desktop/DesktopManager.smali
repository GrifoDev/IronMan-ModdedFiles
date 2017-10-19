.class public final Lcom/samsung/android/desktop/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;,
        Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;
    }
.end annotation


# instance fields
.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktopmode/IDesktopMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method


# virtual methods
.method public isDeskDockConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;-><init>(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;-><init>(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method
