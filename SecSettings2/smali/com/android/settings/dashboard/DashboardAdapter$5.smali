.class Lcom/android/settings/dashboard/DashboardAdapter$5;
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

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->val$suggestionCategory:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->val$suggestionCategory:I

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap0(Lcom/android/settings/dashboard/DashboardAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get4(Lcom/android/settings/dashboard/DashboardAdapter;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->val$suggestionCategory:I

    invoke-static {}, Lcom/android/settings/dashboard/DashboardAdapter;->-get1()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap2(Lcom/android/settings/dashboard/DashboardAdapter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get4(Lcom/android/settings/dashboard/DashboardAdapter;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$5;->val$suggestionCategory:I

    invoke-static {}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method
