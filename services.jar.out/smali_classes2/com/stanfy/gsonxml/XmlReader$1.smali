.class Lcom/stanfy/gsonxml/XmlReader$1;
.super Ljava/lang/Object;
.source "XmlReader.java"

# interfaces
.implements Lcom/stanfy/gsonxml/XmlReader$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stanfy/gsonxml/XmlReader$Creator",
        "<",
        "Lcom/stanfy/gsonxml/XmlReader$TokenRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stanfy/gsonxml/XmlReader;


# direct methods
.method constructor <init>(Lcom/stanfy/gsonxml/XmlReader;)V
    .locals 0

    iput-object p1, p0, Lcom/stanfy/gsonxml/XmlReader$1;->this$0:Lcom/stanfy/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    .locals 2

    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$TokenRef;-><init>(Lcom/stanfy/gsonxml/XmlReader$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader$1;->create()Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    move-result-object v0

    return-object v0
.end method
