.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;,
        Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$1(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$2(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$3(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$4(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$5(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$6(JLandroid/content/pm/PackageParser$Package;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$7(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic -com_android_server_pm_PackageManagerServiceUtils_lambda$8(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, p0, v6, v7, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v19, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.PRE_BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v14

    new-instance v19, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl1;-><init>(Landroid/util/ArraySet;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v19, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl2;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/String;

    const-string/jumbo v19, "com.eg.android.AlipayGphone"

    const/16 v20, 0x0

    aput-object v19, v8, v20

    const-string/jumbo v19, "com.baidu.BaiduMap"

    const/16 v20, 0x1

    aput-object v19, v8, v20

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Package;

    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string/jumbo v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Adding app by forceDexopt apps "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v19

    if-eqz v19, :cond_3

    new-instance v19, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl3;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-eqz v19, :cond_2

    const-wide/32 v20, 0x240c8400

    sub-long v4, v6, v20

    new-instance v16, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;-><init>(J)V

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    return-object v17

    :cond_2
    new-instance v16, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl5;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v16, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl6;-><init>()V

    goto :goto_2
.end method

.method public static packagesToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$-void_sortPackagesByUsageDate_java_util_List_pkgs_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
