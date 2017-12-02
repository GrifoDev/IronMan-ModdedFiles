.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
.super Ljava/lang/Object;
.source "CaTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getTimeStampForUTC(J)J
    .locals 13

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v6, "GMT"

    const/4 v7, 0x0

    invoke-direct {v1, v7, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit16 v1, v8, 0xe10

    mul-int/lit8 v6, v10, 0x3c

    add-int/2addr v1, v6

    add-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v9

    int-to-long v2, v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public final getTimeStampForUTC(JJJ)J
    .locals 5

    sub-long v0, p1, p5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    :cond_0
    sub-long v2, p3, v0

    return-wide v2
.end method

.method public final getTimeStampForUTC24(JJJ)J
    .locals 5

    sub-long v0, p1, p5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5095e20

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    :cond_0
    :goto_0
    sub-long v2, p3, v0

    return-wide v2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final sendCurTimeToSensorHub()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->getCAEService()Lcom/samsung/android/contextaware/manager/ContextAwareService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->sendCurTimeToSensorHub()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "CAE is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
