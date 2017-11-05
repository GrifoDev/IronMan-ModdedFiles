.class final Lcom/android/systemui/statusbar/KeyboardShortcuts$4;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->onConfigurationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get0()Lcom/android/systemui/statusbar/KeyboardShortcuts;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap4(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    return-void
.end method
