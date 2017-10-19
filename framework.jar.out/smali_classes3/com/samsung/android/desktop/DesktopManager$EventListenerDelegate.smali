.class Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventListenerDelegate"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeDesktopDockState(Z)V

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeDesktopModeState(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
