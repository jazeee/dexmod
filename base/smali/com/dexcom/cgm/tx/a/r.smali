.class public final Lcom/dexcom/cgm/tx/a/r;
.super Ljava/lang/Object;
.source "TxBatteryStatusResponse.java"


# instance fields
.field private m_batteryResistance:I

.field private final m_crc:I

.field private m_dynamicVoltage:I

.field private final m_responseCode:B

.field private m_runTime:I

.field private m_staticVoltage:I

.field private m_temperature:B

.field private final m_transmitterStatusCode:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/dexcom/cgm/tx/a/a;->createAndValidateBuffer([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_responseCode:B

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_transmitterStatusCode:B

    .line 26
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_staticVoltage:I

    .line 27
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_dynamicVoltage:I

    .line 28
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_batteryResistance:I

    .line 29
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt8(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_runTime:I

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_temperature:B

    .line 31
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/tx/a/r;->m_crc:I

    .line 32
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->checkNoRemainingBuffer(Ljava/nio/ByteBuffer;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final getBatteryResistance()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_batteryResistance:I

    return v0
.end method

.method public final getDynamicVoltage()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_dynamicVoltage:I

    return v0
.end method

.method public final getRunTime()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_runTime:I

    return v0
.end method

.method public final getStaticVoltage()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_staticVoltage:I

    return v0
.end method

.method public final getTemperature()I
    .locals 1

    .prologue
    .line 43
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_temperature:B

    return v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/r;->m_transmitterStatusCode:B

    return v0
.end method
