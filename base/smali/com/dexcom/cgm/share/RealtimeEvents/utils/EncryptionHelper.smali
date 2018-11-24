.class public Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field private static final AES_CIPHER:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_EXPONENT:Ljava/lang/String; = "AQAB"

.field private static final KEY_LENGTH:I = 0x10

.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final moduli:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->moduli:Ljava/util/HashMap;

    .line 38
    const-string v0, "7olxURnCin2Nut6vgZn9TnJpdxAhGeARDpgEX1lFEQCeLTRgK2XSj2HbbKmQ7L7QvhsdHEyRmTD9lBbkP5nMvHwpoSiOPiPHcjGqaKxZ8DNnKGLD8fqCSQorLvsuYIPl6hduvJFPxSySPjqUV/F8H+D3e3oGw1vAS3yhSAtjMbEVuFbfYxGKwvEh2VJ8q+NR1zgaayTs57elob1hkUAOT/OME4A+DGqiMYrmaLcFPBiBGUXDKMb30lN8iGHrGvovQMQ4LR0GUY1jehpb5I3XVZYD3lBweekE3CF/Jiw5AWB7KwhhwyCwOrfxVCTIiRkYbFVYQ9dmixF7uqHAPi/cqw=="

    .line 40
    sget-object v1, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->moduli:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encryptAES([B[B[B)[B
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 104
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 81
    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The key was not 16 bytes! The key was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->moduli:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-existent public key index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :try_start_0
    invoke-static {v0, p1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->encryptRSA([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encryptPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 50
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 51
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The key was not 16 bytes! The key was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 55
    array-length v2, v1

    if-eq v2, v3, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The IV was not 16 bytes! The IV was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 61
    invoke-static {v2, v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->encryptAES([B[B[B)[B

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->correctBase64URLEncode([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encryptRSA([BI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-static {p1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->getKeyForVersion(I)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 120
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->correctBase64URLEncode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyForVersion(I)Ljava/security/PublicKey;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 126
    sget-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->moduli:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 129
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    const-string v3, "AQAB"

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 131
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 132
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
