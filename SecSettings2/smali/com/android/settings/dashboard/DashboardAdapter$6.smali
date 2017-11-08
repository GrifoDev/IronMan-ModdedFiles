.class Lcom/android/settings/dashboard/DashboardAdapter$6;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$suggestionCategory:I


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$suggestionCategory:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settingslib/SuggestionParser;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get6(Lcom/android/settings/dashboard/DashboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$suggestionCategory:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap2(Lcom/android/settings/dashboard/DashboardAdapter;)V

    return-void
.end method
