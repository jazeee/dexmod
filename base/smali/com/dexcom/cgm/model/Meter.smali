.class public Lcom/dexcom/cgm/model/Meter;
.super Ljava/lang/Object;
.source "Meter.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "meter_entry_type"
    .end annotation
.end field

.field private m_meterValue:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "meter_value"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "recorded_time_stamp"
    .end annotation
.end field

.field private m_systemTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field

.field private m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_time_stamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    .line 52
    iput-object p2, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 53
    iput-object p4, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 54
    iput-object p3, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 55
    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 56
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 57
    return-void
.end method

.method public constructor <init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    .line 69
    iput-object p2, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 70
    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 73
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 80
    :goto_0
    iput-object p4, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 81
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 82
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 77
    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 143
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

    .line 145
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/Meter;

    .line 147
    iget v2, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    iget v3, p1, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    iget-object v3, p1, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 151
    :cond_7
    iget-object v2, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p1, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 152
    :cond_8
    iget-object v2, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    iget-object v3, p1, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getMeterEntryType()Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    return-object v0
.end method

.method public getMeterTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getMeterValue()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterId;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meter{m_meterValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dexcom/cgm/model/Meter;->m_meterValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_meterEntryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_meterEntryType:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_systemTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Meter;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
