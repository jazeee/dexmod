.class public Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
.super Ljava/lang/Object;
.source "BluetoothDeviceRecord.java"


# instance fields
.field private m_appAuthenticationPrimaryKey:Ljava/lang/String;

.field private m_appAuthenticationSecondaryKey:Ljava/lang/String;

.field private m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

.field private m_deviceAddress:Ljava/lang/String;

.field private m_operatingIntervalMs:J

.field private m_recordSystemTime:Lcom/dexcom/cgm/k/j;

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_deviceAddress:Ljava/lang/String;

    .line 173
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_operatingIntervalMs:J

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_deviceAddress:Ljava/lang/String;

    .line 173
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_operatingIntervalMs:J

    .line 184
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getRecordSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    .line 185
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 186
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_deviceAddress:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 190
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 236
    new-instance v1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    iget-object v3, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    iget-object v4, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v5, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_deviceAddress:Ljava/lang/String;

    iget-wide v6, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_operatingIntervalMs:J

    iget-object v8, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    move-object v11, v2

    invoke-direct/range {v1 .. v11}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;-><init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/BluetoothDeviceRecord$1;)V

    return-object v1
.end method

.method public setAppAuthenticationPrimaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public setAppAuthenticationSecondaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 231
    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_deviceAddress:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setOperatingIntervalMs(J)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 1

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_operatingIntervalMs:J

    .line 213
    return-object p0
.end method

.method public setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    .line 195
    return-object p0
.end method

.method public setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 201
    return-object p0
.end method
