.class public final Lcom/dexcom/cgm/h/a/e;
.super Ljava/lang/Object;
.source "DexTransmitterId.java"


# instance fields
.field m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have null transmitter ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 25
    return-void
.end method

.method public static containsOnlyValidCharacters(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->containsOnlyValidCharacters(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/h/a/e;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/dexcom/cgm/h/a/e;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/e;-><init>()V

    .line 103
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 104
    return-object v0
.end method

.method public static getDefaultId()Lcom/dexcom/cgm/h/a/e;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/dexcom/cgm/model/TransmitterId;->GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/e;->fromInternal(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static isCorrectLength(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isCorrectLength(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstCharacterValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isFirstCharacterValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTransmitterIdArcher(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTransmitterIdValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    check-cast p1, Lcom/dexcom/cgm/h/a/e;

    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v1, p1, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isDefaultTransmitterId()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/dexcom/cgm/h/a/e;->getDefaultId()Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/h/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isTransmitterIdArcher()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/e;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
