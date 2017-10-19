.class public Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;
.super Ljava/lang/Object;
.source "ExecAgentSvcRelay.java"

# interfaces
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecAgentSvcRelay"


# instance fields
.field private final mSvcOp:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mSvcOp:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo v0, "ExecAgentSvcRelay"

    const-string/jumbo v1, "relay action 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/mateservice/executable/ExecAgentSvcRelay;->mSvcOp:Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/mateservice/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
