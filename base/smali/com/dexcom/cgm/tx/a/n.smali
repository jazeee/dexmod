.class public final Lcom/dexcom/cgm/tx/a/n;
.super Ljava/lang/Object;
.source "StartSensorSessionResponse.java"


# static fields
.field public static final NewSessionStarted:B = 0x1t

.field public static final SessionAlreadyInProgress:B = 0x2t

.field public static final StaleStartCommand:B = 0x3t

.field public static final TransmitterEndOfLife:B = 0x4t


# instance fields
.field private final m_applicationStatusCode:B

.field private final m_crc:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_sensorStartTime:J

.field private final m_sessionSignature:J

.field private final m_transmitterStatusCode:B

.field private final m_transmitterTime:J


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/n;->m_responseCode:B

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/n;->m_transmitterStatusCode:B

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/n;->m_applicationStatusCode:B

    .line 35
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/n;->m_sensorStartTime:J

    .line 36
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/n;->m_sessionSignature:J

    .line 37
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/n;->m_transmitterTime:J

    .line 38
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/n;->m_crc:I

    .line 39
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 40
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/n;->m_rawBytes:[B

    .line 41
    return-void
.end method


# virtual methods
.method public final getApplicationStatusCode()B
    .locals 1

    .prologue
    .line 55
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_applicationStatusCode:B

    return v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_crc:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_responseCode:B

    return v0
.end method

.method public final getSensorStartTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_sensorStartTime:J

    return-wide v0
.end method

.method public final getSessionSignature()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_sessionSignature:J

    return-wide v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_transmitterStatusCode:B

    return v0
.end method

.method public final getTransmitterTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/n;->m_transmitterTime:J

    return-wide v0
.end method
