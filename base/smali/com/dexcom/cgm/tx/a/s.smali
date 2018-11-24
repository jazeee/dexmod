.class public final Lcom/dexcom/cgm/tx/a/s;
.super Ljava/lang/Object;
.source "TxTimeAndSessionSignatureResponse.java"


# static fields
.field public static final STOPPED_SESSION_SIGNATURE:J = 0xffffffffL


# instance fields
.field private final m_aesKeyHash:J

.field private final m_crc:I

.field private final m_currentTransmitterTime:J

.field private final m_responseCode:B

.field private final m_sessionSignature:J

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/s;->m_responseCode:B

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/s;->m_transmitterStatusCode:B

    .line 29
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/s;->m_currentTransmitterTime:J

    .line 30
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/s;->m_sessionSignature:J

    .line 31
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/s;->m_aesKeyHash:J

    .line 32
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/s;->m_crc:I

    .line 33
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final getAesKeyHash()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/s;->m_aesKeyHash:J

    return-wide v0
.end method

.method public final getCurrentTransmitterTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/s;->m_currentTransmitterTime:J

    return-wide v0
.end method

.method public final getSessionSignature()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/s;->m_sessionSignature:J

    return-wide v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 38
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/s;->m_transmitterStatusCode:B

    return v0
.end method
