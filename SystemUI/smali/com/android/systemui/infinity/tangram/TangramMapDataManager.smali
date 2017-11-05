.class public Lcom/android/systemui/infinity/tangram/TangramMapDataManager;
.super Ljava/lang/Object;
.source "TangramMapDataManager.java"


# instance fields
.field context:Landroid/content/Context;

.field data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

.field gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->filename:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public loadData(I)Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    iput-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->data:Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    return-object v1
.end method
