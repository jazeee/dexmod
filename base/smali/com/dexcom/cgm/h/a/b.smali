.class public final Lcom/dexcom/cgm/h/a/b;
.super Ljava/lang/Object;
.source "DexCgmStateInformation.java"


# instance fields
.field private m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/DisplayGlucose;)Lcom/dexcom/cgm/h/a/b;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/dexcom/cgm/h/a/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/b;-><init>()V

    .line 100
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    .line 101
    return-object v0
.end method


# virtual methods
.method public final getDisplayState()Lcom/dexcom/cgm/h/a/a/b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;->getDisplayState()Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/b;->fromInternal(Lcom/dexcom/cgm/model/enums/EGVDisplayState;)Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getEgv()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;->getEgv()I

    move-result v0

    return v0
.end method

.method public final getSessionStartTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterIdSettingTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;->getTransmitterIdSettingTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/e;->fromInternal(Lcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CgmStateInformation{m_displayGlucose="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/h/a/b;->m_displayGlucose:Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
