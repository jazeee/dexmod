.class public final Lcom/dexcom/cgm/tx/a/k;
.super Ljava/lang/Object;
.source "DataStreamResponse.java"


# static fields
.field public static final STREAM_STATUS_CODE_SUCCESS:B = 0x1t


# instance fields
.field private final m_crc:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_streamCrc:I

.field private final m_streamId:B

.field private final m_streamStatusCode:B

.field private final m_timeRangeEnd:J

.field private final m_timeRangeStart:J

.field private final m_totalPacketLength:J

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_responseCode:B

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_transmitterStatusCode:B

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamStatusCode:B

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamId:B

    .line 29
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/k;->m_timeRangeStart:J

    .line 30
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/k;->m_timeRangeEnd:J

    .line 31
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/k;->m_totalPacketLength:J

    .line 32
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamCrc:I

    .line 33
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/k;->m_crc:I

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/k;->m_rawBytes:[B

    .line 35
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getStreamCrc()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamCrc:I

    return v0
.end method

.method public final getStreamId()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamId:B

    return v0
.end method

.method public final getStreamStatusCode()B
    .locals 1

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_streamStatusCode:B

    return v0
.end method

.method public final getTimeRangeEnd()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_timeRangeEnd:J

    return-wide v0
.end method

.method public final getTimeRangeStart()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_timeRangeStart:J

    return-wide v0
.end method

.method public final getTotalPacketLength()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/k;->m_totalPacketLength:J

    return-wide v0
.end method
