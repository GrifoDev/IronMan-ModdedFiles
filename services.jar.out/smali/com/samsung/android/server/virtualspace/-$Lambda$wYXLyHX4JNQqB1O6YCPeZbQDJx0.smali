.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$-com_samsung_android_server_virtualspace_VSSession_3048()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;->$m$0()V

    return-void
.end method
