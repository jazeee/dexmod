.class public Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
.super Ljava/lang/Object;
.source "BluetoothEventRecord.java"


# instance fields
.field private m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field private m_glucoseTime:Lcom/dexcom/cgm/k/n;

.field private m_payloadLong:J

.field private m_payloadString:Ljava/lang/String;

.field private m_recordRtcTime:J

.field private m_recordSystemTime:Lcom/dexcom/cgm/k/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/BluetoothEventRecord;
    .locals 10

    .prologue
    .line 132
    new-instance v0, Lcom/dexcom/cgm/model/BluetoothEventRecord;

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    iget-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_recordRtcTime:J

    iget-object v4, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_glucoseTime:Lcom/dexcom/cgm/k/n;

    iget-object v5, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    iget-object v6, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_payloadString:Ljava/lang/String;

    iget-wide v7, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_payloadLong:J

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/dexcom/cgm/model/BluetoothEventRecord;-><init>(Lcom/dexcom/cgm/k/j;JLcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/String;JLcom/dexcom/cgm/model/BluetoothEventRecord$1;)V

    return-object v0
.end method

.method public setBluetoothEventType(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_bluetoothEventType:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 115
    return-object p0
.end method

.method public setGlucoseTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_glucoseTime:Lcom/dexcom/cgm/k/n;

    .line 109
    return-object p0
.end method

.method public setPayloadLong(J)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_payloadLong:J

    .line 127
    return-object p0
.end method

.method public setPayloadString(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_payloadString:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setRecordRtcTime(J)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_recordRtcTime:J

    .line 103
    return-object p0
.end method

.method public setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    .line 97
    return-object p0
.end method
