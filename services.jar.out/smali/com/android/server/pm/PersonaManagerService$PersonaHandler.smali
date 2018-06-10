.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "PersonaHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    return-void
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 59

    const-string/jumbo v55, "PersonaHandler"

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v55, v0

    sparse-switch v55, :sswitch_data_0

    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "msg : ignore unknown message"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const-string/jumbo v55, "type"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    const-string/jumbo v55, "flag"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v55, "uid"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v50

    const-string/jumbo v55, "pid"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v38

    invoke-static/range {v50 .. v50}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v45

    move/from16 v2, v19

    move/from16 v3, v50

    move/from16 v4, v53

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap11(Lcom/android/server/pm/PersonaManagerService;ZIII)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-set2(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    new-instance v56, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-wrap5(Lcom/android/server/pm/PersonaManagerService;Z)Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap16(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)V

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v36, :cond_1

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    move/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    move/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    move/from16 v55, v0

    if-eqz v55, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_8

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->isEmpty()Z

    move-result v55

    if-eqz v55, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v56, v0

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-wrap15(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_8

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Startiing FOTA for persona "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v56

    monitor-enter v56

    const/16 v55, 0x1

    :try_start_0
    move/from16 v0, v55

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v55, "PersonaManagerService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, "; pi.upgradeInProgress = "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v55

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v57

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v55

    if-eqz v55, :cond_4

    const/16 v24, 0x0

    :try_start_1
    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "reading from xml resource for fota"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, "enterprisedata.xml"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v18

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_9

    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v30

    const/16 v55, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v16, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v24, v25

    :goto_2
    if-eqz v24, :cond_4

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    const/16 v17, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v55

    const-string/jumbo v56, "com.google.android.webview"

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move/from16 v2, v58

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-nez v6, :cond_5

    const/16 v17, 0x0

    :cond_5
    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "Webview package is in Knox container"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    if-nez v17, :cond_6

    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "Webview package is not in Knox container, hence install that package"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v56, v0

    const-string/jumbo v57, "com.google.android.webview"

    invoke-static/range {v55 .. v57}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    :cond_6
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    move/from16 v55, v0

    if-eqz v55, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-static {v0, v1, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    const-string/jumbo v57, "fwversion"

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    xor-int/lit8 v55, v55, 0x1

    if-eqz v55, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap20(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v55

    monitor-exit v56

    throw v55

    :cond_9
    :try_start_5
    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "Failed to find enterprisedata.xml in system container"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v15

    :goto_5
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Failed to parse enterprisedata - Exception: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v24, :cond_4

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v15

    goto/16 :goto_3

    :catch_2
    move-exception v15

    goto/16 :goto_3

    :catchall_1
    move-exception v55

    :goto_6
    if-eqz v24, :cond_a

    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    throw v55

    :catch_3
    move-exception v15

    goto :goto_7

    :catch_4
    move-exception v15

    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    const-string/jumbo v57, "fwversion"

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    xor-int/lit8 v55, v55, 0x1

    if-eqz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap9(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap8(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap0(Lcom/android/server/pm/PersonaManagerService;)Z

    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v55

    if-lez v55, :cond_11

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "cleanPersonaInfo size - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "clean up started for persona id - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v52, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    sget-object v56, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, ".xml"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v52

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v52, :cond_10

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_10

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "persona xml delete status "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    sget-object v56, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v26, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v56, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, ".xml"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_d

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "installer whitelist xml delete status "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v13, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v56, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, ".xml"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v31

    move-object/from16 v1, v55

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_e

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Diabled COM launcher xml delete status "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v14, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v56, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, ".xml"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v31

    move-object/from16 v1, v55

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_f

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Diabled launcher xml delete status "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v55

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v56

    invoke-virtual/range {v55 .. v56}, Landroid/util/SparseArray;->remove(I)V

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "clean up ended for persona id - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v55, "PersonaManagerService:FOTA"

    const-string/jumbo v56, "persona file don\'t exist"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    if-eqz v55, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v55

    if-lez v55, :cond_14

    const/16 v27, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v55

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v53

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "clean up started for persona list xml - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v35, Ljava/io/File;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    sget-object v56, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    const-string/jumbo v56, "personalist.xml"

    move-object/from16 v0, v35

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v35, :cond_12

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_12

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "persona list xml delete status "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "clean up ended for persona list xml - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    :cond_12
    const-string/jumbo v55, "PersonaManagerService:FOTA"

    const-string/jumbo v56, "persona list file don\'t exist"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    const-string/jumbo v56, "clearing user with persona list cache"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v55

    if-eqz v55, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "user list file delete status - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v54, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v55

    const-string/jumbo v56, "userwithpersonalist.xml.crt"

    invoke-direct/range {v54 .. v56}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v54, :cond_16

    invoke-virtual/range {v54 .. v54}, Ljava/io/File;->exists()Z

    move-result v55

    if-eqz v55, :cond_16

    invoke-virtual/range {v54 .. v54}, Ljava/io/File;->delete()Z

    move-result v43

    const-string/jumbo v55, "PersonaManagerService:FOTA"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "user list backup file delete status - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    monitor-enter v56

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v55

    const-string/jumbo v57, "fwversion"

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_17

    if-eqz v12, :cond_18

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    xor-int/lit8 v55, v55, 0x1

    if-eqz v55, :cond_18

    :cond_17
    const-string/jumbo v55, "PersonaManagerService"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Storing fw version - "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, ", fota version - "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const/16 v58, 0x9

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v55

    const-string/jumbo v57, "fwversion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v58, v0

    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v55

    const-string/jumbo v57, "fotaversion"

    const-string/jumbo v58, "9"

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap21(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_18
    monitor-exit v56

    goto/16 :goto_0

    :catchall_2
    move-exception v55

    monitor-exit v56

    throw v55

    :sswitch_2
    :try_start_a
    const-string/jumbo v55, "PersonaManagerServiceHandler"

    const-string/jumbo v56, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    const-string/jumbo v56, "user"

    invoke-virtual/range {v55 .. v56}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/UserManager;

    const/16 v55, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v33

    const/16 v21, 0x0

    :goto_c
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v55

    move/from16 v0, v21

    move/from16 v1, v55

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_19

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v55, v0

    const/16 v56, 0x4

    invoke-static/range {v55 .. v56}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    const-string/jumbo v55, "PersonaManagerService"

    const-string/jumbo v56, "Clear Device compromised"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_19
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    :catch_5
    move-exception v15

    const-string/jumbo v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v55, "knox.container.proxy.EVENT_ACTIVITY_DRAWN"

    move-object/from16 v0, v55

    invoke-static {v0, v7}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v55, "keyguardOwner"

    const/16 v56, -0x515

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    const-string/jumbo v55, "forceHide"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v28

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v55, v0

    if-lez v55, :cond_1a

    const/16 v41, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v32

    move/from16 v2, v41

    invoke-static {v0, v1, v11, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap7(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :cond_1a
    const/16 v41, 0x0

    goto :goto_d

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap6(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v55

    move/from16 v0, v55

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap19(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get13(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :cond_1b
    :goto_e
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_0

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v55

    if-eqz v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v55

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v55

    xor-int/lit8 v55, v55, 0x1

    if-nez v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v55

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v55

    if-nez v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v55

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v55

    if-eqz v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v55

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v55

    xor-int/lit8 v55, v55, 0x1

    if-eqz v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxTimeoutHandler;

    move-result-object v55

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Lcom/android/server/pm/KnoxTimeoutHandler;->getScreenOffTimeoutLocked(I)I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string/jumbo v55, "knox.power_button_instantly_locks"

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    const/16 v57, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    move/from16 v2, v57

    move/from16 v3, v56

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v29

    if-eqz v44, :cond_1c

    const/16 v55, -0x2

    move/from16 v0, v44

    move/from16 v1, v55

    if-ne v0, v1, :cond_1d

    :cond_1c
    :goto_f
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v55, "android.intent.extra.user_handle"

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v56, v0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v46

    const-string/jumbo v55, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    move-object/from16 v0, v55

    invoke-static {v0, v8}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static/range {v46 .. v47}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e

    :cond_1d
    if-lez v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_1b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1b

    goto :goto_f

    :catchall_3
    move-exception v55

    move-object/from16 v24, v25

    goto/16 :goto_6

    :catch_6
    move-exception v15

    move-object/from16 v24, v25

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_a
        0xa -> :sswitch_0
        0xb -> :sswitch_b
        0xd -> :sswitch_2
        0xf -> :sswitch_1
        0x32 -> :sswitch_3
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x3c -> :sswitch_4
        0x3d -> :sswitch_5
    .end sparse-switch
.end method
