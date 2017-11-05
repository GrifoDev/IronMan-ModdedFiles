.class Lcom/android/systemui/recents/model/RecentsSettingHelper$1;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationNameControlEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$1;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    return-void
.end method
