.class public final Lcom/dexcom/cgm/tx/a/l;
.super Ljava/lang/Object;
.source "EgvResponse.java"


# static fields
.field public static final AlgStateCalibrationError0:B = 0x9t

.field public static final AlgStateCalibrationError1:B = 0x8t

.field public static final AlgStateCalibrationLinearityFitFailure:B = 0xat

.field public static final AlgStateCalibrationRequest:B = 0x7t

.field public static final AlgStateFirstOfTwoBGsNeeded:B = 0x4t

.field public static final AlgStateInCalibration:B = 0x6t

.field public static final AlgStateOutOfCalDueToOutlier:B = 0xdt

.field public static final AlgStateSecondOfTwoBGsNeeded:B = 0x5t

.field public static final AlgStateSensorFailedDueToCountsAberration:B = 0xbt

.field public static final AlgStateSensorFailedDueToResidualAberration:B = 0xct

.field public static final AlgStateSensorWarmup:B = 0x2t

.field public static final AlgStateSessionExpired:B = 0xft

.field public static final AlgStateSessionStopped:B = 0x1t

.field public static final AlgStateTemporarySensorFailure:B = 0x12t

.field public static final SpecialEgvAbsoluteAberration:I = 0x9

.field public static final SpecialEgvAsicIssue:I = 0xc

.field public static final SpecialEgvCountsAberration:I = 0x6

.field public static final SpecialEgvHigh:I = 0x191

.field public static final SpecialEgvLow:I = 0x27

.field public static final SpecialEgvPowerAberration:I = 0xa

.field public static final SpecialEgvSensorNotActive:I = 0x1

.field public static final SpecialEgvSensorOutOfCalibration:I = 0x5


# instance fields
.field private final m_algorithmState:B

.field private final m_crc:I

.field private final m_estimatedGlucoseValue:I

.field private final m_rate:B

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_sequenceNumber:J

.field private final m_transmitterStatusCode:B

.field private final m_transmitterTime:J


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_responseCode:B

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterStatusCode:B

    .line 59
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    .line 60
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    .line 61
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_estimatedGlucoseValue:I

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_algorithmState:B

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_rate:B

    .line 64
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_crc:I

    .line 65
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 66
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/l;->m_rawBytes:[B

    .line 67
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 118
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

    .line 120
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/tx/a/l;

    .line 122
    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_responseCode:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_responseCode:B

    if-ne v2, v3, :cond_4

    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterStatusCode:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_transmitterStatusCode:B

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    iget-wide v4, p1, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_estimatedGlucoseValue:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_estimatedGlucoseValue:I

    if-ne v2, v3, :cond_4

    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_algorithmState:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_algorithmState:B

    if-ne v2, v3, :cond_4

    iget-byte v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_rate:B

    iget-byte v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_rate:B

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_crc:I

    iget v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_crc:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_rawBytes:[B

    iget-object v3, p1, Lcom/dexcom/cgm/tx/a/l;->m_rawBytes:[B

    .line 130
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getAlgorithmState()B
    .locals 1

    .prologue
    .line 96
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_algorithmState:B

    return v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_crc:I

    return v0
.end method

.method public final getEgv()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_estimatedGlucoseValue:I

    return v0
.end method

.method public final getRate()D
    .locals 2

    .prologue
    .line 101
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_rate:B

    invoke-static {v0}, Lcom/dexcom/cgm/d/d;->getRateAsDouble(B)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_responseCode:B

    return v0
.end method

.method public final getSequenceNumber()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    return-wide v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 76
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterStatusCode:B

    return v0
.end method

.method public final getTransmitterTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 136
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/l;->m_responseCode:B

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterStatusCode:B

    add-int/2addr v0, v1

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    iget-wide v4, p0, Lcom/dexcom/cgm/tx/a/l;->m_sequenceNumber:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    iget-wide v4, p0, Lcom/dexcom/cgm/tx/a/l;->m_transmitterTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_estimatedGlucoseValue:I

    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_algorithmState:B

    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_rate:B

    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_crc:I

    add-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/l;->m_rawBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    return v0
.end method
