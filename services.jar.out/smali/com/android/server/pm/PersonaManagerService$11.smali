.class Lcom/android/server/pm/PersonaManagerService$11;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$personaId:I

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 1

    const-string/jumbo v0, "userStopAborted"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap14(Ljava/lang/String;)I

    return-void
.end method

.method public userStopped(I)V
    .locals 2

    const-string/jumbo v0, "userStopped"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap14(Ljava/lang/String;)I

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, " User Stopped !onReboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$personaId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap68(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method
