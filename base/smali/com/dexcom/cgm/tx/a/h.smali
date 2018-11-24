.class public final Lcom/dexcom/cgm/tx/a/h;
.super Ljava/lang/Object;
.source "CalBoundsResponse.java"


# instance fields
.field private final m_bgWeight:S

.field private final m_calBoundError0:I

.field private final m_calBoundError1:I

.field private final m_calBoundMax:I

.field private final m_calBoundMin:I

.field private final m_crc:I

.field private final m_lastBloodGlucose:I

.field private final m_lastCalibrationTime:J

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_responseCode:B

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_transmitterStatusCode:B

    .line 32
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt8(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_bgWeight:S

    .line 33
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError1:I

    .line 34
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError0:I

    .line 35
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMin:I

    .line 36
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMax:I

    .line 37
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastBloodGlucose:I

    .line 38
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    .line 39
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_crc:I

    .line 40
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/h;->m_rawBytes:[B

    .line 41
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 105
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/tx/a/h;

    .line 107
    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_responseCode:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_responseCode:B

    if-ne v2, v3, :cond_4

    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_transmitterStatusCode:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_transmitterStatusCode:B

    if-ne v2, v3, :cond_4

    iget-short v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_bgWeight:S

    iget-short v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_bgWeight:S

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError1:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError1:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError0:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError0:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMin:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMin:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMax:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMax:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastBloodGlucose:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_lastBloodGlucose:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_crc:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_crc:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_rawBytes:[B

    iget-object v3, p1, Lcom/dexcom/cgm/tx/a/h;->m_rawBytes:[B

    .line 117
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getBgWeight()S
    .locals 1

    .prologue
    .line 56
    iget-short v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_bgWeight:S

    return v0
.end method

.method public final getCalBoundError0()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError0:I

    return v0
.end method

.method public final getCalBoundError1()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError1:I

    return v0
.end method

.method public final getCalBoundMax()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMax:I

    return v0
.end method

.method public final getCalBoundMin()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMin:I

    return v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_crc:I

    return v0
.end method

.method public final getLastBloodGlucose()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastBloodGlucose:I

    return v0
.end method

.method public final getLastCalibrationTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    return-wide v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_responseCode:B

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 51
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_transmitterStatusCode:B

    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 124
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/h;->m_responseCode:B

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_transmitterStatusCode:B

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_bgWeight:S

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError1:I

    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundError0:I

    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMin:I

    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_calBoundMax:I

    add-int/2addr v0, v1

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastBloodGlucose:I

    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    iget-wide v4, p0, Lcom/dexcom/cgm/tx/a/h;->m_lastCalibrationTime:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_crc:I

    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/h;->m_rawBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    return v0
.end method
