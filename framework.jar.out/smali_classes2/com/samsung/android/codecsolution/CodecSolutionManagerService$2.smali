.class Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;
.super Landroid/os/Handler;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleMessage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MhdrParamService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MhdrMetaService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :sswitch_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MixingService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.mhdrservice"

    const-string/jumbo v13, "com.samsung.android.mhdrservice.MixingService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto/16 :goto_0

    :sswitch_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.smartfitting"

    const-string/jumbo v13, "com.samsung.android.smartfitting.SmartFittingService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.smartfitting"

    const-string/jumbo v13, "com.samsung.android.smartfitting.SmartFittingService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/ActivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_0

    const-string/jumbo v12, "CodecSolution"

    const-string/jumbo v13, "runningAppProcesses is null."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :try_start_0
    iget v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v12, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    iget-object v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pid("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") pkg("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    if-gez v9, :cond_2

    const/16 v9, 0xff

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get7(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v12, v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    iget v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get7(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    iput-object v13, v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->date:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get7(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v13, v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->pid:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get7(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;

    iget-object v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iput-object v13, v12, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$PidInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get6(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)I

    move-result v13

    rem-int/lit16 v13, v13, 0x100

    invoke-static {v12, v13}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Can\'t write dump info : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Can\'t get the pkg of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Can\'t find the pkg of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v12, "intent"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string/jumbo v12, "CodecSolution"

    const-string/jumbo v13, "intent is null."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendBroadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string/jumbo v12, "CodecSolution"

    const-string/jumbo v13, "ignore before boot completed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;

    const-string/jumbo v12, "CodecSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "event : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getCategory()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v12}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v3}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getCategory()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/samsung/android/codecsolution/Logging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_7
        0xca -> :sswitch_8
        0x320 -> :sswitch_9
        0x384 -> :sswitch_a
    .end sparse-switch
.end method
