.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CryptoManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ecryptWithAES256CBC([B[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v0, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v2, -0x8

    const-string/jumbo v3, "ecryptWithAES256CBC"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public ecryptWithServerPubKey([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v2, -0x8

    const-string/jumbo v3, "ecryptWithServerPubKey"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getRandom([B)V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public hmacSha256([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "HmacSHA256"

    :try_start_0
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HmacSHA256"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v2, -0x8

    const-string/jumbo v3, "hmacSha256"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public sha256(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const/4 v2, -0x8

    const-string/jumbo v3, "sha256"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$300(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public verifyCertChain([B)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$200()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$200()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->verifyCertificate([B)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
