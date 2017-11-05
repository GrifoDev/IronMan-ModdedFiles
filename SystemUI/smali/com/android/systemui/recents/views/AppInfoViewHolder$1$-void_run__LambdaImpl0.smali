.class final synthetic Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;
.super Ljava/lang/Object;
.source "AppInfoViewHolder.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/AppInfoViewHolder$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_run__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private synthetic val$taskAffinity:Ljava/lang/String;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput p2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$userId:I

    iput-object p3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$taskAffinity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$userId:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1$-void_run__LambdaImpl0;->val$taskAffinity:Ljava/lang/String;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->-com_android_systemui_recents_views_AppInfoViewHolder$1_lambda$1(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    return v0
.end method
