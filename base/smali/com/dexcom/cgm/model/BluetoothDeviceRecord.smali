.class public Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
.super Ljava/lang/Object;
.source "BluetoothDeviceRecord.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = ""


# instance fields
.field private m_appAuthenticationPrimaryKey:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_authentication_primary_key"
    .end annotation
.end field

.field private m_appAuthenticationSecondaryKey:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_authentication_secondary_key"
    .end annotation
.end field

.field private m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "app_authentication_timestamp"
    .end annotation
.end field

.field private m_deviceAddress:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "device_address"
    .end annotation
.end field

.field private m_operatingIntervalMs:Ljava/lang/Long;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "operating_interval_ms"
    .end annotation
.end field

.field private m_recordId:Ljava/lang/Long;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordSystemTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_system_time"
    .end annotation
.end field

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_recordId:Ljava/lang/Long;

    .line 55
    iput-object p2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    .line 56
    iput-object p3, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 57
    iput-object p4, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    .line 58
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    .line 59
    iput-object p7, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/BluetoothDeviceRecord$1;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p9}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;-><init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V

    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    if-ne p0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 130
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    .line 133
    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-nez v2, :cond_3

    .line 135
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 139
    goto :goto_0

    .line 136
    :cond_7
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 141
    :cond_8
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    .line 145
    goto :goto_0

    .line 142
    :cond_a
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    if-nez v2, :cond_9

    .line 147
    :cond_b
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 151
    goto :goto_0

    .line 148
    :cond_d
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 153
    :cond_e
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    .line 157
    goto :goto_0

    .line 154
    :cond_10
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 159
    :cond_11
    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 160
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 163
    goto :goto_0

    .line 160
    :cond_12
    iget-object v2, p1, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAppAuthenticationPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppAuthenticationSecondaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingIntervalMs()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public isDetailsAvailable()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{recordId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_recordId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordSystemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_recordSystemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatingIntervalMs=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_operatingIntervalMs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationPrimaryKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationSecondaryKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAuthenticationTimestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
