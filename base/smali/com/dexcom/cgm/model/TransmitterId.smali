.class public Lcom/dexcom/cgm/model/TransmitterId;
.super Ljava/lang/Object;
.source "TransmitterId.java"


# static fields
.field private static final TRANSMITTER_ID_LENGTH:I = 0x6

.field private static final VALID_FIRST_CHAR:C = '4'

.field private static m_bypassArcherCheck:Z

.field private static m_defaultId:Lcom/dexcom/cgm/model/TransmitterId;

.field private static final m_digitLabels:[C


# instance fields
.field private m_transmitterId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dexcom/cgm/model/TransmitterId;->m_digitLabels:[C

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/model/TransmitterId;->m_bypassArcherCheck:Z

    .line 137
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    const-string v1, "400000"

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/TransmitterId;->m_defaultId:Lcom/dexcom/cgm/model/TransmitterId;

    return-void

    .line 13
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x57s
        0x58s
        0x59s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have null transmitter ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/dexcom/cgm/model/TransmitterId;->m_defaultId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public static bypassArcherCheck()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/model/TransmitterId;->m_bypassArcherCheck:Z

    .line 89
    return-void
.end method

.method public static containsOnlyValidCharacters(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-char v4, v2, v1

    .line 57
    sget-object v5, Lcom/dexcom/cgm/model/TransmitterId;->m_digitLabels:[C

    invoke-static {v4, v5}, Lcom/dexcom/cgm/model/TransmitterId;->isInArray(C[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getNumericTransmitterID(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 120
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isCorrectLength(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFirstCharacterValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isInArray(C[C)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    .line 129
    if-ne v3, p0, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isTransmitterIDInRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 109
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->getNumericTransmitterID(Ljava/lang/String;)J

    move-result-wide v0

    .line 110
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterId;->getNumericTransmitterID(Ljava/lang/String;)J

    move-result-wide v2

    .line 111
    invoke-static {p2}, Lcom/dexcom/cgm/model/TransmitterId;->getNumericTransmitterID(Ljava/lang/String;)J

    move-result-wide v4

    .line 112
    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTransmitterIdArcher(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-boolean v1, Lcom/dexcom/cgm/model/TransmitterId;->m_bypassArcherCheck:Z

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v1, "480000"

    const-string v2, "480400"

    invoke-static {p0, v1, v2}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIDInRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 101
    const-string v2, "480401"

    const-string v3, "4FYYYY"

    invoke-static {p0, v2, v3}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIDInRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 103
    const-string v3, "4Q0000"

    const-string v4, "4YYYYY"

    invoke-static {p0, v3, v4}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIDInRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 104
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTransmitterIdValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isFirstCharacterValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->isCorrectLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/dexcom/cgm/model/TransmitterId;->containsOnlyValidCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 147
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 148
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

    .line 150
    :cond_2
    check-cast p1, Lcom/dexcom/cgm/model/TransmitterId;

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    iget-object v1, p1, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefaultTransmitterId()Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/dexcom/cgm/model/TransmitterId;->m_defaultId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTransmitterIdArcher()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterId;->m_transmitterId:Ljava/lang/String;

    return-object v0
.end method
