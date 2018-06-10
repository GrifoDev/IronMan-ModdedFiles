.class public Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;
.super Ljava/lang/Object;
.source "FotaServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_INTERNET_PERMISSION_DENIED:I = 0x1

.field public static final ERROR_CODE_UNKNOWN:I = 0x0

.field public static final ERROR_CODE_VARIFICATION_ERROR:I = 0x2


# instance fields
.field private final ERROR_MSG_INTERNET_PERMISSION_DENIED:Ljava/lang/String;

.field private final ERROR_MSG_VERIFICATION_ERROR:Ljava/lang/String;

.field private final LOCALE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

.field private mContext:Landroid/content/Context;

.field private mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

.field private mFotaServerManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

.field private mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "java.lang.SecurityException: Permission denied (missing INTERNET permission?)"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->ERROR_MSG_INTERNET_PERMISSION_DENIED:Ljava/lang/String;

    const-string/jumbo v0, "Verification"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->ERROR_MSG_VERIFICATION_ERROR:Ljava/lang/String;

    const-string/jumbo v0, "FotaServerManager"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "global"

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->LOCALE_NAME:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaServerManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaServerManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->getInternalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteAllFiles(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    if-gtz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    :cond_1
    :try_start_1
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->deleteAllFiles(Ljava/lang/String;)V

    :goto_2
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getInternalPath()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "getInternalPath : /data/dexupdate/"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "/data/dexupdate/"

    return-object v0
.end method

.method private makeVolleyDir()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/dexupdate/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method


# virtual methods
.method public checkToUpdate(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkToUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FotaServerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->makeVolleyDir()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->setProductName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->setServerChipInfoList(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->moveFirst()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->getChipNameForRequestServer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    const-string/jumbo v3, "global"

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->requestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;)V

    return-void
.end method

.method public clearDataFiles()V
    .locals 2

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "clearDataFiles"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "/data/dexupdate/"

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->deleteAllFiles(Ljava/lang/String;)V

    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "create()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->makeVolleyDir()V

    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$1;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->clearDataFiles()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaServerManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFirmwareInfoListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareInfoListener;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public downloadToUpdate()V
    .locals 5

    const-string/jumbo v0, "FotaServerManager"

    const-string/jumbo v1, "downloadToUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mApplicativeAppFota:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaUpdateAvailableChecker:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaUpdateAvailableChecker;->getChipNameForRequestServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->getInternalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$2;-><init>(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;)V

    const-string/jumbo v4, "global"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->startDownloadFirmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/FirmwareDownloadListener;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager;->mFotaServerManagerListener:Lcom/samsung/android/lib/dexcontrol/fota/server/FotaServerManager$FotaServerManagerListener;

    return-void
.end method
