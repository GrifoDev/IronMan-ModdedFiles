.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "psm_always_on_display_mode"

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v7

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v9, v7, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    const-string/jumbo v2, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "### AOD DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "psm_always_on_display_mode"

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v8

    invoke-static {v6, v7, v9, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v2, v5, v6, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    return v4

    :cond_1
    move v2, v4

    goto :goto_0
.end method
