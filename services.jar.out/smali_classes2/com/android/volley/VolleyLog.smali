.class public Lcom/android/volley/VolleyLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "Volley"

    sput-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string/jumbo v0, "<unknown>"

    const/4 v3, 0x2

    :goto_1
    array-length v6, v5

    if-lt v3, v6, :cond_1

    :goto_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const-string/jumbo v8, "[%d] %s: %s"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    move-object v4, p0

    goto :goto_0

    :cond_1
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lcom/android/volley/VolleyLog;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x24

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo v1, "Changing log tag to %s"

    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
