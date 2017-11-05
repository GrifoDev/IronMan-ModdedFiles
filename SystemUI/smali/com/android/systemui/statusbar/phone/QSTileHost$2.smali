.class Lcom/android/systemui/statusbar/phone/QSTileHost$2;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v10, "initialized"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-set1(Lcom/android/systemui/statusbar/phone/QSTileHost;Z)Z

    new-instance v5, Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get3(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTile;->getToggleState()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "custom"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget-object v9, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/systemui/SystemUIAnalytics;->mTileSAIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget v10, Lcom/android/systemui/SystemUIAnalytics;->QUICKTILE_MAP_TOGGLE_EID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$2;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v9, "SystemUIAnalytics"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SAPreference : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SAPreference : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_3
    move-object v6, v3

    goto :goto_2
.end method
