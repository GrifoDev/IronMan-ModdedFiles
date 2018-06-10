.class Lcom/android/systemui/infinity/tangram/TangramSystem$1;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishUpdateValue(F)V
    .locals 0

    return-void
.end method

.method public onUpdateCurrentValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem$1;->this$0:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->doFrame()V

    return-void
.end method
