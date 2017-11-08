.class public final enum Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field public static final enum SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v2, "SERVICE_DISABLED"

    invoke-direct {v1, v2, v3, v3}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const-string v2, "CONNECTION_LOST"

    invoke-direct {v1, v2, v4, v4}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->INTERNAL_ERROR:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->SERVICE_DISABLED:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    aput-object v2, v1, v4

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->b:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->a:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 3

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No enum const class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->a:I

    return v0
.end method
