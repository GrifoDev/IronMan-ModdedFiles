.class Lcom/gsma/services/rcs/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gsma/services/rcs/a/a;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-static {p2}, Lcom/gsma/services/rcs/a/b$a;->a(Landroid/os/IBinder;)Lcom/gsma/services/rcs/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/a/a;->a(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-static {v0}, Lcom/gsma/services/rcs/a/a;->a(Lcom/gsma/services/rcs/a/a;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-static {v0}, Lcom/gsma/services/rcs/a/a;->b(Lcom/gsma/services/rcs/a/a;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/a/a;->a(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-static {v0}, Lcom/gsma/services/rcs/a/a;->c(Lcom/gsma/services/rcs/a/a;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/a/a$1;->a:Lcom/gsma/services/rcs/a/a;

    invoke-static {v0}, Lcom/gsma/services/rcs/a/a;->d(Lcom/gsma/services/rcs/a/a;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    :cond_0
    return-void
.end method
