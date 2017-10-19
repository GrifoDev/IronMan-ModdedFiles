.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/PackageUtils;->HEX_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCertSha256Digest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computePackageCertSha256Digest(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/util/PackageUtils;->computeCertSha256Digest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static computeSha256Digest([B)Ljava/lang/String;
    .locals 11

    :try_start_0
    const-string/jumbo v8, "SHA256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v1, v4, 0x2

    new-array v2, v1, [C

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v8, v3, v6

    and-int/lit16 v0, v8, 0xff

    mul-int/lit8 v8, v6, 0x2

    sget-object v9, Landroid/util/PackageUtils;->HEX_ARRAY:[C

    ushr-int/lit8 v10, v0, 0x4

    aget-char v9, v9, v10

    aput-char v9, v2, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Landroid/util/PackageUtils;->HEX_ARRAY:[C

    and-int/lit8 v10, v0, 0xf

    aget-char v9, v9, v10

    aput-char v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v8, 0x0

    return-object v8

    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method
