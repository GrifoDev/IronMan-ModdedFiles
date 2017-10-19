.class public Lcom/android/server/mate/MateService;
.super Lcom/android/server/SystemService;
.source "MateService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "mate_service"


# instance fields
.field private final mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/mate/MateService;)Lcom/samsung/android/mateservice/MateServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onCleanupUser(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "mate_service"

    iget-object v1, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/mate/MateService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/mate/MateServiceLocal;

    new-instance v1, Lcom/android/server/mate/MateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/mate/MateService$1;-><init>(Lcom/android/server/mate/MateService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/mate/MateService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onStartUser(I)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onStopUser(I)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onSwitchUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/mate/MateService;->mSvcImpl:Lcom/samsung/android/mateservice/MateServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mateservice/MateServiceImpl;->onUnlockUser(I)V

    return-void
.end method
