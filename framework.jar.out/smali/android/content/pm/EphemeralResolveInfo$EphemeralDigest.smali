.class public final Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EphemeralDigest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDigestBytes:[[B

.field private final mDigestPrefix:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1, p3}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->generateDigest(Landroid/net/Uri;I)[[B

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    iget-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    and-int/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    return-void

    :cond_1
    new-array v2, v0, [[B

    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static generateDigest(Landroid/net/Uri;I)[[B
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-gtz p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [[B

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    return-object v7

    :cond_1
    const/16 v7, 0x2e

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v7, 0x2e

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    if-gez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "could not find digest algorithm"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    add-int/lit8 v7, v6, 0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_1
    if-ltz v6, :cond_0

    if-ge v1, p1, :cond_0

    const/16 v7, 0x2e

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[[B
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    return-object v0
.end method

.method public getDigestPrefix()[I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
