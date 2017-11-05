.class public Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "EnterRecentsWindowAnimationCompletedEvent.java"


# instance fields
.field public completed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->completed:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->completed:Z

    return-void
.end method
