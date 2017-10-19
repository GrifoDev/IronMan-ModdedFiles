.class public Lcom/android/server/pm/PreferredIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PreferredIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredIntentResolver$LogRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/pm/PreferredActivity;",
        "Lcom/android/server/pm/PreferredActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

    check-cast p3, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .locals 1

    iget-object v0, p3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1

    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z
    .locals 1

    iget-object v0, p2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public logIfHomeIntent(Lcom/android/server/pm/PreferredActivity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0xa

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {p1, v8}, Lcom/android/server/pm/PreferredActivity;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "android.intent.category.HOME"

    invoke-virtual {p1, v8}, Lcom/android/server/pm/PreferredActivity;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v8, v8, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v6, v8, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string/jumbo v8, "    Selected from:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_0

    const-string/jumbo v8, "        "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Date;->setTime(J)V

    const-string/jumbo v8, "    Time: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Lcom/android/server/pm/PreferredIntentResolver$LogRunnable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p0, v8, v7, v2}, Lcom/android/server/pm/PreferredIntentResolver$LogRunnable;-><init>(Lcom/android/server/pm/PreferredIntentResolver;Ljava/lang/String;II)V

    if-eqz p2, :cond_2

    const-wide/16 v8, 0x3e8

    invoke-virtual {p2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PreferredActivity;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/pm/PreferredActivity;
    .locals 1

    new-array v0, p1, [Lcom/android/server/pm/PreferredActivity;

    return-object v0
.end method
