.class final synthetic Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$e:Lcom/android/systemui/recents/events/EventBus$Event;

.field private synthetic val$handler:Lcom/android/systemui/recents/events/EventHandler;

.field private synthetic val$this:Lcom/android/systemui/recents/events/EventBus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;Lcom/android/systemui/recents/events/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$this:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$e:Lcom/android/systemui/recents/events/EventBus$Event;

    iput-object p3, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$handler:Lcom/android/systemui/recents/events/EventHandler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$this:Lcom/android/systemui/recents/events/EventBus;

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$e:Lcom/android/systemui/recents/events/EventBus$Event;

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus$-void_-com_android_systemui_recents_events_EventBus_lambda$1_com_android_systemui_recents_events_EventHandler_handler_com_android_systemui_recents_events_EventBus$Event_e_LambdaImpl0;->val$handler:Lcom/android/systemui/recents/events/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->-com_android_systemui_recents_events_EventBus_lambda$2(Lcom/android/systemui/recents/events/EventBus$Event;Lcom/android/systemui/recents/events/EventHandler;)V

    return-void
.end method
