.class final Lcom/dexcom/b/c;
.super Ljava/lang/Object;
.source "SecretWrapperNoKeystore.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljavax/crypto/spec/IvParameterSpec;

.field private final c:Ljavax/crypto/Cipher;

.field private final d:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dexcom/b/c;->a:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x1at
        0x4dt
        0x36t
        0x21t
        0x12t
        0x35t
        -0x2bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    const-string v1, "b6d39eb41f824d229d9f5cbf55b36891"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lcom/dexcom/b/c;->a:[B

    const/16 v3, 0x18c2

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 35
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 37
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/dexcom/b/c;->d:Ljavax/crypto/SecretKey;

    .line 38
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    .line 39
    iget-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 40
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/dexcom/b/c;->b:Ljavax/crypto/spec/IvParameterSpec;

    .line 41
    return-void
.end method


# virtual methods
.method public final a([B)Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dexcom/b/c;->d:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/dexcom/b/c;->b:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    iget-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public final a(Ljavax/crypto/SecretKey;)[B
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dexcom/b/c;->d:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/dexcom/b/c;->b:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    iget-object v0, p0, Lcom/dexcom/b/c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
