.class Lcom/android/systemui/recents/desktop/RecentsWindow$2;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/RecentsWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "Recents_Window"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuItemClick :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLock:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v2}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f06c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-boolean v5, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isInLockTaskEditMode:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v2}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f06c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "com.android.systemui.recents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "53e5c21oy8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v2}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "feedbackType"

    const-string/jumbo v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :cond_1
    return v4
.end method
