.class final Lcom/dexcom/b/b;
.super Ljava/lang/Object;
.source "SecretKeyWrapper.java"


# instance fields
.field private final a:Ljavax/crypto/Cipher;

.field private final b:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 46
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/b/b;->a:Ljavax/crypto/Cipher;

    .line 56
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1071
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1072
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1073
    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1075
    new-instance v3, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v3, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 1076
    invoke-virtual {v3, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CN="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1078
    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    .line 1079
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v1

    .line 1080
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v1

    .line 1081
    invoke-virtual {v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v1

    .line 1082
    const-string v2, "RSA"

    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 1083
    invoke-virtual {v2, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1084
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 64
    :cond_0
    invoke-virtual {v0, p2, v7}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 65
    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v1, p0, Lcom/dexcom/b/b;->b:Ljava/security/KeyPair;

    .line 66
    return-void
.end method


# virtual methods
.method public final a([B)Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dexcom/b/b;->a:Ljavax/crypto/Cipher;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dexcom/b/b;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 107
    iget-object v0, p0, Lcom/dexcom/b/b;->a:Ljavax/crypto/Cipher;

    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public final a(Ljavax/crypto/SecretKey;)[B
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/b/b;->a:Ljavax/crypto/Cipher;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dexcom/b/b;->b:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    iget-object v0, p0, Lcom/dexcom/b/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
