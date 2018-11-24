.class public Lcom/dexcom/cgm/test/api/SimTxConnect;
.super Ljava/lang/Object;
.source "SimTxConnect.java"


# instance fields
.field private m_backfilledRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;",
            ">;"
        }
    .end annotation
.end field

.field private m_calBounds:[B

.field private m_commandResponses:[[B

.field private m_egv:[B

.field private m_firmwareVersion:[B

.field private m_isTransmitterLowBattery:Z

.field private m_sessionSignature:J

.field private m_systemTime:J

.field private m_transmitterTime:J

.field private m_transmitterVersion:[B

.field private m_transmitterVersionExtended:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_commandResponses:[[B

    return-void
.end method


# virtual methods
.method public getBackfilledRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_backfilledRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCalBounds()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_calBounds:[B

    return-object v0
.end method

.method public getCommandResponses()[[B
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_commandResponses:[[B

    return-object v0
.end method

.method public getEgv()[B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_egv:[B

    return-object v0
.end method

.method public getFirmwareVersion()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_firmwareVersion:[B

    return-object v0
.end method

.method public getSessionSignature()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_sessionSignature:J

    return-wide v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_systemTime:J

    return-wide v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterTime:J

    return-wide v0
.end method

.method public getTransmitterVersion()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterVersion:[B

    return-object v0
.end method

.method public getTransmitterVersionExtended()[B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterVersionExtended:[B

    return-object v0
.end method

.method public isTransmitterLowBattery()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_isTransmitterLowBattery:Z

    return v0
.end method

.method public setBackfilledRecords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_backfilledRecords:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public setCalBounds([B)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_calBounds:[B

    .line 55
    return-void
.end method

.method public setCommandResponses([[B)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_commandResponses:[[B

    .line 75
    return-void
.end method

.method public setEgv([B)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_egv:[B

    .line 50
    return-void
.end method

.method public setFirmwareVersion([B)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_firmwareVersion:[B

    .line 65
    return-void
.end method

.method public setIsTransmitterLowBattery(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_isTransmitterLowBattery:Z

    .line 45
    return-void
.end method

.method public setSessionSignature(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_sessionSignature:J

    .line 40
    return-void
.end method

.method public setSystemTime(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_systemTime:J

    .line 30
    return-void
.end method

.method public setTransmitterTime(J)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterTime:J

    .line 35
    return-void
.end method

.method public setTransmitterVersion([B)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterVersion:[B

    .line 60
    return-void
.end method

.method public setTransmitterVersionExtended([B)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnect;->m_transmitterVersionExtended:[B

    .line 70
    return-void
.end method
