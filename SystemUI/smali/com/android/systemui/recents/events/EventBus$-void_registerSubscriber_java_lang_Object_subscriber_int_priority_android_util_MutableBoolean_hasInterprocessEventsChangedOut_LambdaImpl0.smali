.class final synthetic Lcom/android/systemui/recents/events/EventBus$-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$handler:Lcom/android/systemui/recents/events/EventHandler;

.field private synthetic val$this:Lcom/android/systemui/recents/events/EventBus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0;->val$this:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventBus$-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0;->val$handler:Lcom/android/systemui/recents/events/EventHandler;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0;->val$this:Lcom/android/systemui/recents/events/EventBus;

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventBus$-void_registerSubscriber_java_lang_Object_subscriber_int_priority_android_util_MutableBoolean_hasInterprocessEventsChangedOut_LambdaImpl0;->val$handler:Lcom/android/systemui/recents/events/EventHandler;

    check-cast p1, Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/events/EventBus;->-com_android_systemui_recents_events_EventBus_lambda$1(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
