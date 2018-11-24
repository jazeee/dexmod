.class public Lcom/dexcom/cgm/model/PhoneBattery;
.super Ljava/lang/Object;
.source "PhoneBattery.java"


# instance fields
.field private m_isBatteryLow:Z

.field private m_isCharging:Z

.field private m_level:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_level:I

    .line 29
    iput-boolean p2, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isCharging:Z

    .line 30
    iput-boolean p3, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isBatteryLow:Z

    .line 31
    return-void
.end method


# virtual methods
.method public setBatteryIsLow(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isBatteryLow:Z

    .line 46
    return-void
.end method

.method public setIsCharging(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isCharging:Z

    .line 41
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_level:I

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"Log\":\"PhoneBattery\",\"Level\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"Charging\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"BatteryLow\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/PhoneBattery;->m_isBatteryLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
