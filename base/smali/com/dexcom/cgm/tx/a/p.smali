.class public final Lcom/dexcom/cgm/tx/a/p;
.super Ljava/lang/Object;
.source "TransmitterVersionExtendedResponse.java"


# static fields
.field public static final FLAG_EGV_BACKFILL:I = 0x4


# instance fields
.field private final m_crc:I

.field private final m_featureFlags:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_sessionTimeDays:S

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_responseCode:B

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_transmitterStatusCode:B

    .line 25
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt8(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_sessionTimeDays:S

    .line 26
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_featureFlags:I

    .line 27
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/tx/a/p;->getBytes(Ljava/nio/ByteBuffer;I)[B

    .line 28
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_crc:I

    .line 29
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/p;->m_rawBytes:[B

    .line 30
    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .prologue
    .line 34
    new-array v0, p2, [B

    .line 35
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    return-object v0
.end method


# virtual methods
.method public final getCrc()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_crc:I

    return v0
.end method

.method public final getFeatureFlags()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_featureFlags:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 41
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_responseCode:B

    return v0
.end method

.method public final getSessionTimeDays()S
    .locals 1

    .prologue
    .line 51
    iget-short v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_sessionTimeDays:S

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/p;->m_transmitterStatusCode:B

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_responseCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_sessionTimeDays:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureFlags=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_featureFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_crc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/p;->m_rawBytes:[B

    .line 77
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
