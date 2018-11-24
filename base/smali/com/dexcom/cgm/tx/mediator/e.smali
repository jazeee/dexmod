.class final Lcom/dexcom/cgm/tx/mediator/e;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "AuthenticationStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aw;

.field private final c:Lcom/dexcom/cgm/tx/mediator/aj;

.field private d:[B


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/aw;)V
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 31
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/e;->b:Lcom/dexcom/cgm/tx/mediator/aw;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/f;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/f;-><init>(Lcom/dexcom/cgm/tx/mediator/e;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/e;)Lcom/dexcom/cgm/tx/mediator/ac;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/e;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21
    .line 2136
    new-instance v2, Lcom/dexcom/cgm/tx/a/d;

    invoke-direct {v2, p2}, Lcom/dexcom/cgm/tx/a/d;-><init>([B)V

    .line 2138
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2139
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2140
    :goto_0
    if-eqz v0, :cond_5

    .line 2171
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v0

    .line 2172
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    invoke-direct {p0, v0, v3, v2}, Lcom/dexcom/cgm/tx/mediator/e;->a(Ljava/lang/String;[BLcom/dexcom/cgm/tx/a/d;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2174
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v3, "Authenticated with primary key."

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 2143
    :goto_1
    if-nez v0, :cond_4

    .line 2145
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Failed authentication with app keys."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2146
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 2159
    :goto_2
    return-void

    .line 2139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2178
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v0

    .line 2179
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v3, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationPrimaryKey(Ljava/lang/String;)V

    .line 2180
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v3, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationSecondaryKey(Ljava/lang/String;)V

    .line 2181
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    invoke-direct {p0, v0, v3, v2}, Lcom/dexcom/cgm/tx/mediator/e;->a(Ljava/lang/String;[BLcom/dexcom/cgm/tx/a/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2183
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v3, "Authenticated with secondary key."

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2186
    goto :goto_1

    .line 2150
    :cond_4
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/a/d;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/k;Ljava/lang/String;[B)V

    goto :goto_2

    .line 2270
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2271
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/e;->a(Ljava/lang/String;[BLcom/dexcom/cgm/tx/a/d;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2158
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Failed authentication with Tx ID."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2159
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto :goto_2

    .line 2163
    :cond_6
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v3, "Authenticated with transmitter ID."

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/a/d;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/k;Ljava/lang/String;[B)V

    goto :goto_2
.end method

.method private a(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 3

    .prologue
    .line 68
    .line 1276
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1277
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->b:Lcom/dexcom/cgm/tx/mediator/aw;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/aw;->nextBytes([B)V

    .line 68
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 72
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithAppKey:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithAppKeyWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithAppKeyIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createChallengeFromDisplayUsingAppKey([B)[B

    move-result-object v0

    .line 88
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 89
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithTxId:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithTxIdWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendChallengeWithTxIdIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->d:[B

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createChallengeFromDisplayUsingTxId([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/dexcom/cgm/tx/mediator/k;Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 224
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p3}, Lcom/dexcom/cgm/tx/mediator/e;->a([B[B)[B

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createHashFromDisplay([B)[B

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendHashFromDisplay:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 228
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendHashFromDisplayWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationSendHashFromDisplayIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 231
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error encrypting challenge value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BLcom/dexcom/cgm/tx/a/d;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return v0

    .line 203
    :cond_0
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/dexcom/cgm/tx/mediator/e;->a([B[B)[B

    move-result-object v2

    .line 204
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/d;->getHash()[B

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 205
    if-nez v1, :cond_1

    .line 207
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed hash: calculated= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tx="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/d;->getHash()[B

    move-result-object v4

    invoke-static {v4}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v3, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    .line 257
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 258
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 2022
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2024
    const-string v2, "AES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 2025
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2026
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 264
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 265
    return-object v0
.end method

.method static synthetic b(Lcom/dexcom/cgm/tx/mediator/e;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 3

    .prologue
    .line 21
    .line 3242
    new-instance v0, Lcom/dexcom/cgm/tx/a/c;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/c;-><init>([B)V

    .line 3243
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/c;->isAuthenticationSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    :goto_0
    return-void

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication was not successful: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3250
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3249
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 3251
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 109
    return-void
.end method

.method public final onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 3

    .prologue
    .line 55
    invoke-interface {p1, p3}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to enable indications: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationControlPointIndicationsEnabled:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 94
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic write failure: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->c:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/e;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationControlPointEnableIndications:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 49
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->b(Lcom/dexcom/cgm/tx/mediator/at;)V

    .line 50
    return-void
.end method
