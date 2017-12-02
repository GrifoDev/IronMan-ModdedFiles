.class public Lcom/android/incallui/agif/AgifManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;
    }
.end annotation


# static fields
.field private static final SETTING_KEY_SHOW_CALL_STICKERS:Ljava/lang/String; = "show_call_stickers"

.field private static final TAG:Ljava/lang/String; = "AgifManager"

.field private static sInstance:Lcom/android/incallui/agif/AgifManager;


# instance fields
.field private mAgifPresenter:Lcom/android/incallui/AgifPresenter;

.field private mAgifRecentUri:Ljava/lang/String;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;

.field private mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

.field private mCoreAppsManagerListener:Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

.field private mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

.field private mShowCallStickersListener:Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

.field private final mShowCallStickersListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCallStickersObserver:Landroid/database/ContentObserver;

.field private mSmartCallEventListener:Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/agif/AgifManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/agif/AgifManager$1;-><init>(Lcom/android/incallui/agif/AgifManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCallList:Lcom/android/incallui/CallList;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListeners:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createListeners()V

    const-string v0, "agif_calling_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show_call_stickers"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/agif/AgifFeature;->printAgifFeature()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->onShowCallStickersChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/AgifManager;)Lcom/android/incallui/AgifPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifPresenter:Lcom/android/incallui/AgifPresenter;

    return-object v0
.end method

.method private createCoreAppsManagerListener()Lcom/android/incallui/coreapps/CoreAppsManager$Listener;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifManager$2;-><init>(Lcom/android/incallui/agif/AgifManager;)V

    return-object v0
.end method

.method private createInCallStateListener()Lcom/android/incallui/InCallPresenter$InCallStateListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifManager$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifManager$4;-><init>(Lcom/android/incallui/agif/AgifManager;)V

    return-object v0
.end method

.method private createIncomingCallListener()Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifManager$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifManager$6;-><init>(Lcom/android/incallui/agif/AgifManager;)V

    return-object v0
.end method

.method private createListeners()V
    .locals 2

    const-string v0, "agif_call_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createInCallStateListener()Lcom/android/incallui/InCallPresenter$InCallStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createIncomingCallListener()Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createShowCallStickersListener()Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListener:Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createCoreAppsManagerListener()Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManagerListener:Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/agif/AgifManager;->createSmartCallEventListener()Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mSmartCallEventListener:Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mSmartCallEventListener:Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    goto :goto_0
.end method

.method private createShowCallStickersListener()Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifManager$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifManager$3;-><init>(Lcom/android/incallui/agif/AgifManager;)V

    return-object v0
.end method

.method private createSmartCallEventListener()Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/agif/AgifManager$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifManager$5;-><init>(Lcom/android/incallui/agif/AgifManager;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/agif/AgifManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/incallui/agif/AgifManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/agif/AgifManager;

    invoke-direct {v0}, Lcom/android/incallui/agif/AgifManager;-><init>()V

    sput-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRawUriFromAgifName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v6, ""

    if-nez p1, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.samsung.android.stickercenter.provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.stickercenter.provider"

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/provider/agifcallprovider/AgifCallProvider;->c:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agif_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAgifUniqueId() agif name filed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v0, v6

    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AgifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgifUniqueId query error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method private onShowCallStickersChanged()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isShowCallStickersEnabled()Z

    move-result v1

    const-string v0, "AgifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowCallStickersChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

    invoke-interface {v0, v1}, Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;->onShowCallStickersChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redial(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redial: agifRecentUri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->receiveContactUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addShowCallStickersListener(Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public redial()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getRedialCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "AgifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redial: isRedialing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , send recent Agif."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifManager;->redial(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShowCallStickersListener(Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public saveLastAgifInfoForRedial(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastAgifInfoForRedial: uriString-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifManager;->getRawUriFromAgifName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastAgifInfoForRedial: mAgifRecentUri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPresenter(Lcom/android/incallui/AgifPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifManager;->mAgifPresenter:Lcom/android/incallui/AgifPresenter;

    return-void
.end method

.method public setupListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListener:Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifManager;->addShowCallStickersListener(Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManagerListener:Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    return-void
.end method

.method public tearDownListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mShowCallStickersListener:Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifManager;->removeShowCallStickersListener(Lcom/android/incallui/agif/AgifManager$ShowCallStickersListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManagerListener:Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifManager;->mSmartCallEventListener:Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_1
    return-void
.end method
