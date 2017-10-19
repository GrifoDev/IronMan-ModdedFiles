.class public Lcom/android/server/desktopmode/DesktopModeUiManager;
.super Ljava/lang/Object;
.source "DesktopModeUiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeUiManager$1;,
        Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;,
        Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field private final mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

.field mIsBound:Z

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/DesktopModeUiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeUiManager;)Lcom/android/server/desktopmode/InternalCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeUiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DesktopModeUiService]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeUiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mCurrentUserId:I

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeUiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeUiManager$1;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-direct {v0}, Lcom/android/server/desktopmode/InternalCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    return-void
.end method

.method private bindUiService()V
    .locals 5

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindUiService mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    :cond_0
    return-void
.end method

.method private showDialogOnUIService(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bindUiServiceWithCallback(Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindUiServiceWithCallback callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->add(Lcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    return-void
.end method

.method public dismissDialog()V
    .locals 3

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dismissDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    goto :goto_0
.end method

.method public dismissPresentation(II)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissPresentation() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissPresentation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(II)V

    goto :goto_0
.end method

.method public getCurrentDialogType()I
    .locals 3

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentDialogType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentDialogType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentPresentationType(I)I
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentPresentationType() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentPresentationType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentVirtualDeviceType()I
    .locals 3

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentVirtualDeviceType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentVirtualDeviceType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public hasPresentation(II)Z
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasPresentation() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasPresentation(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isBoundWithService()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeNotification(I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    goto :goto_0
.end method

.method public removeVirtualDevice(I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVirtualDevice(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeVirtualDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    goto :goto_0
.end method

.method public setCurrentUserId(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mCurrentUserId:I

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->unbindUiService()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    :cond_0
    return-void
.end method

.method public showDialog(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialogOnUIService(), dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->isBoundWithService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeUiManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager$2;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;ILcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/InternalCallbackList;->add(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog() service is not ready!! mDesktopModeUiService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDailog() wrong type value!! dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeUiManager$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager$3;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;Lcom/android/server/desktopmode/DesktopModeUiManager$InternalDialogCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialogOnUIService(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    :goto_0
    return-void

    :pswitch_2
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeUiManager$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/DesktopModeUiManager$4;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialogOnUIService(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->showDialogOnUIService(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public showNotification(I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotification(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->isBoundWithService()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeUiManager$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/DesktopModeUiManager$6;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;I)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotification() service is not ready!! mDesktopModeUiService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showPresentation(II)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPresentation(), where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->isBoundWithService()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeUiManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager$5;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;II)V

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPresentation() service is not ready!! mDesktopModeUiService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showPresentation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showVirtualDevice(II)V
    .locals 4

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showVirtualDevice(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->isBoundWithService()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeUiManager$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeUiManager$7;-><init>(Lcom/android/server/desktopmode/DesktopModeUiManager;II)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(ILcom/android/server/desktopmode/DesktopModeUiManager$InternalServiceCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeUiManager;->bindUiService()V

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showVirtualDevice() service is not ready!! mDesktopModeUiService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showVirtualDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindUiService()V
    .locals 4

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeUiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindUiService mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mIsBound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeUiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/InternalCallbackList;->clear()V

    :cond_0
    return-void
.end method
