.class public final Lcom/dexcom/cgm/tx/a/m;
.super Ljava/lang/Object;
.source "FirmwareVersionResponse.java"


# instance fields
.field private m_bleRadioFirmwareVersion:Ljava/lang/String;

.field private m_bleSoftDeviceVersion:Ljava/lang/String;

.field private m_cgmProcessorFirmwareVersion:Ljava/lang/String;

.field private final m_crc:I

.field private m_hardwareVersion:S

.field private m_nordicAsicHwId:I

.field private final m_rawBytes:[B

.field private final m_responseCode:B

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_responseCode:B

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_transmitterStatusCode:B

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/tx/a/m;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/a/m;->formatVersion([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    .line 33
    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/tx/a/m;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/a/m;->formatVersion([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt8(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_hardwareVersion:S

    .line 35
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/tx/a/m;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/a/m;->formatSoftDeviceVersion([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleSoftDeviceVersion:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_nordicAsicHwId:I

    .line 37
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_crc:I

    .line 38
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 39
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/m;->m_rawBytes:[B

    .line 40
    return-void
.end method

.method private formatSoftDeviceVersion([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatVersion([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
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
    .line 59
    new-array v0, p2, [B

    .line 60
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 61
    return-object v0
.end method


# virtual methods
.method public final getBleRadioFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getBleSoftDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleSoftDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCgmProcessorFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCrc()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_crc:I

    return v0
.end method

.method public final getHardwareVersion()S
    .locals 1

    .prologue
    .line 86
    iget-short v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_hardwareVersion:S

    return v0
.end method

.method public final getNordicAsicHwId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_nordicAsicHwId:I

    return v0
.end method

.method public final getRawBytes()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_rawBytes:[B

    return-object v0
.end method

.method public final getResponseCode()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_responseCode:B

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/m;->m_transmitterStatusCode:B

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{m_responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_responseCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_transmitterStatusCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_cgmProcessorFirmwareVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_bleRadioFirmwareVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_hardwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_hardwareVersion:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_bleSoftDeviceVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_bleSoftDeviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_nordicAsicHwId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_nordicAsicHwId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_crc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_rawBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/m;->m_rawBytes:[B

    .line 121
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
