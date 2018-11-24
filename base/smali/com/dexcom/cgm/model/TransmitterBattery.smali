.class public Lcom/dexcom/cgm/model/TransmitterBattery;
.super Ljava/lang/Object;
.source "TransmitterBattery.java"


# instance fields
.field private final m_dynamicVoltage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DV"
    .end annotation
.end field

.field private final m_resistance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Res"
    .end annotation
.end field

.field private final m_runTimeDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Runtime"
    .end annotation
.end field

.field private final m_staticVoltage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SV"
    .end annotation
.end field

.field private final m_temperature:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Temp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_staticVoltage:I

    .line 27
    iput p2, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_dynamicVoltage:I

    .line 28
    iput p3, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_temperature:I

    .line 29
    iput p4, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_resistance:I

    .line 30
    iput p5, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_runTimeDays:I

    .line 31
    return-void
.end method


# virtual methods
.method public getDynamicVoltage()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_dynamicVoltage:I

    return v0
.end method

.method public getResistance()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_resistance:I

    return v0
.end method

.method public getRunTimeDays()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_runTimeDays:I

    return v0
.end method

.method public getStaticVoltage()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_staticVoltage:I

    return v0
.end method

.method public getTemperature()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterBattery;->m_temperature:I

    return v0
.end method
