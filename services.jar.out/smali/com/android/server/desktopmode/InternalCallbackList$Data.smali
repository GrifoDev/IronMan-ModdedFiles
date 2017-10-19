.class Lcom/android/server/desktopmode/InternalCallbackList$Data;
.super Ljava/lang/Object;
.source "InternalCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/InternalCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field mCallback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;

.field mType:I

.field mWhere:I

.field final synthetic this$0:Lcom/android/server/desktopmode/InternalCallbackList;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/InternalCallbackList;IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->this$0:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    iput p3, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mWhere:I

    iput-object p4, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mCallback:Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;

    return-void
.end method
