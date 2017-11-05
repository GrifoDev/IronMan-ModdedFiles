.class public Lcom/android/systemui/recents/tv/RecentsTvImpl;
.super Lcom/android/systemui/recents/RecentsImpl;
.source "RecentsTvImpl.java"


# static fields
.field private static final mPipManager:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    return-void
.end method
