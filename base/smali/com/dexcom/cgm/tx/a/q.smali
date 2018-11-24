.class public final Lcom/dexcom/cgm/tx/a/q;
.super Ljava/lang/Object;
.source "TransmitterVersionResponse.java"


# instance fields
.field private final m_apiVersion:S

.field private final m_crc:I

.field private final m_maxRuntimeDays:I

.field private final m_maxStorageTimeDays:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_softwareNumber:Ljava/lang/String;

.field private final m_storageTimeDays:I

.field private final m_transmitterStatusCode:B

.field private final m_transmitterVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_responseCode:B

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterStatusCode:B

    .line 34
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/tx/a/q;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/a/q;->formatVersion([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterVersion:Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/tx/a/q;->formatSoftwareNumber(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_softwareNumber:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_storageTimeDays:I

    .line 37
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt8(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_apiVersion:S

    .line 38
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxRuntimeDays:I

    .line 39
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxStorageTimeDays:I

    .line 41
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_crc:I

    .line 42
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/q;->m_rawBytes:[B

    .line 44
    return-void
.end method

.method private formatSoftwareNumber(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SW"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatVersion([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBytes(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .prologue
    .line 56
    new-array v0, p2, [B

    .line 57
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    return-object v0
.end method


# virtual methods
.method public final getApiVersion()S
    .locals 1

    .prologue
    .line 93
    iget-short v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_apiVersion:S

    return v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_crc:I

    return v0
.end method

.method public final getMaxRuntimeDays()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxRuntimeDays:I

    return v0
.end method

.method public final getMaxStorageTimeDays()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxStorageTimeDays:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 68
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_responseCode:B

    return v0
.end method

.method public final getSoftwareNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_softwareNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageTimeDays()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_storageTimeDays:I

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterStatusCode:B

    return v0
.end method

.method public final getTransmitterVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{m_responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_responseCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterStatusCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_transmitterVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_softwareNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_softwareNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_storageTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_storageTimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_apiVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_apiVersion:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_maxRuntimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxRuntimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_maxStorageTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_maxStorageTimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_crc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_rawBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/q;->m_rawBytes:[B

    .line 129
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
