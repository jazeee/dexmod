.class public Lcom/dexcom/cgm/component_provider/e;
.super Ljava/lang/Object;
.source "CgmPresentationComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/h/a;


# instance fields
.field m_alertUpdateHandler:Lcom/dexcom/cgm/b/h;

.field m_cgmAlertUpdateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/b;",
            ">;"
        }
    .end annotation
.end field

.field m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private final m_cgmProvider:Lcom/dexcom/cgm/b/f;

.field m_dataUpdateHandler:Lcom/dexcom/cgm/b/i;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/b/f;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmAlertUpdateCallbacks:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/component_provider/f;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/f;-><init>(Lcom/dexcom/cgm/component_provider/e;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_dataUpdateHandler:Lcom/dexcom/cgm/b/i;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/component_provider/g;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/g;-><init>(Lcom/dexcom/cgm/component_provider/e;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_alertUpdateHandler:Lcom/dexcom/cgm/b/h;

    .line 79
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_alertUpdateHandler:Lcom/dexcom/cgm/b/h;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_dataUpdateHandler:Lcom/dexcom/cgm/b/i;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V

    .line 85
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/e;->areAlertKindEnumsSynchronized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AlertKind and DexAlertKind Enums are not synchronized!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/e;->areDisplayStateEnumsSynchronized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "EGVDisplayState and DexDisplayState Enums are not synchronized!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/e;->areSpecialGlucoseValueEnumsSynchronized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SpecialGlucoseValue and DexSpecialGlucoseValue Enums are not synchronized!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/e;->areSpecialTrendRateValueEnumsSynchronized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SpecialTrendRateValue and DexSpecialTrendRateValue Enums are not synchronized!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/e;->areTrendArrowEnumsSynchronized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TrendArrow and DexTrendArrow Enums are not synchronized!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 114
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/component_provider/e;Lcom/dexcom/cgm/b/u;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/e;->sendDataUpdate(Lcom/dexcom/cgm/b/u;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/component_provider/e;Lcom/dexcom/cgm/b/t;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/e;->sendAlertUpdate(Lcom/dexcom/cgm/b/t;)V

    return-void
.end method

.method private areAlertKindEnumsSynchronized()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    .line 119
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/a;->values()[Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v4

    .line 120
    const/4 v0, 0x1

    .line 122
    array-length v2, v3

    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 136
    :goto_0
    return v1

    :cond_0
    move v2, v0

    move v0, v1

    .line 128
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 130
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private areDisplayStateEnumsSynchronized()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-static {}, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->values()[Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    move-result-object v3

    .line 142
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/b;->values()[Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v4

    .line 143
    const/4 v0, 0x1

    .line 145
    array-length v2, v3

    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 159
    :goto_0
    return v1

    :cond_0
    move v2, v0

    move v0, v1

    .line 151
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 153
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private areSpecialGlucoseValueEnumsSynchronized()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->values()[Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    move-result-object v3

    .line 165
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/c;->values()[Lcom/dexcom/cgm/h/a/a/c;

    move-result-object v4

    .line 166
    const/4 v0, 0x1

    .line 168
    array-length v2, v3

    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 183
    :goto_0
    return v1

    :cond_0
    move v2, v0

    move v0, v1

    .line 174
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 176
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    .line 177
    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/c;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 174
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private areSpecialTrendRateValueEnumsSynchronized()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-static {}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->values()[Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    move-result-object v3

    .line 189
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/d;->values()[Lcom/dexcom/cgm/h/a/a/d;

    move-result-object v4

    .line 190
    const/4 v0, 0x1

    .line 192
    array-length v2, v3

    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 207
    :goto_0
    return v1

    :cond_0
    move v2, v0

    move v0, v1

    .line 198
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 200
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    .line 201
    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/d;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private areTrendArrowEnumsSynchronized()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {}, Lcom/dexcom/cgm/model/enums/TrendArrow;->values()[Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/e;->values()[Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v4

    .line 214
    const/4 v0, 0x1

    .line 216
    array-length v2, v3

    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 231
    :goto_0
    return v1

    :cond_0
    move v2, v0

    move v0, v1

    .line 222
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 224
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/enums/TrendArrow;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    .line 225
    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/e;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v1

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private declared-synchronized sendAlertUpdate(Lcom/dexcom/cgm/b/t;)V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmAlertUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/b;

    .line 73
    invoke-static {p1}, Lcom/dexcom/cgm/h/d;->fromInternal(Lcom/dexcom/cgm/b/t;)Lcom/dexcom/cgm/h/d;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/h/b;->evAlertData(Lcom/dexcom/cgm/h/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized sendDataUpdate(Lcom/dexcom/cgm/b/u;)V
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/c;

    .line 55
    invoke-static {p1}, Lcom/dexcom/cgm/h/e;->fromInternal(Lcom/dexcom/cgm/b/u;)Lcom/dexcom/cgm/h/e;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/h/c;->evCgmData(Lcom/dexcom/cgm/h/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public calibrate(ILcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/b/f;->calibrate(ILcom/dexcom/cgm/k/j;)V

    .line 337
    return-void
.end method

.method public getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 278
    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/b/f;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmData;->getGlucoseValues()Ljava/util/List;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 284
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/c;->fromInternal(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/h/a/c;

    move-result-object v0

    .line 285
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    return-object v1
.end method

.method public getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 300
    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getCurrentDisplayGlucoseRecord()Lcom/dexcom/cgm/model/DisplayGlucose;

    move-result-object v0

    .line 299
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/b;->fromInternal(Lcom/dexcom/cgm/model/DisplayGlucose;)Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public getLastCalibration()Lcom/dexcom/cgm/h/a/d;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getLastCalibration()Lcom/dexcom/cgm/model/Meter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getLastCalibration()Lcom/dexcom/cgm/model/Meter;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/d;->fromInternal(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/h/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public getSensorInsertionTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/f;->fromInternal(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/h/a/f;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/h/b;)V
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmAlertUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    .line 343
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/b/f;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 345
    return-void
.end method

.method public startSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->startSensor(Lcom/dexcom/cgm/k/j;)V

    .line 325
    return-void
.end method

.method public startServices()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->startServices()V

    .line 238
    return-void
.end method

.method public stopSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->stopSensor(Lcom/dexcom/cgm/k/j;)V

    .line 331
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->teardown()V

    .line 271
    return-void
.end method

.method public declared-synchronized unregisterCgmAlertUpdateCallback(Lcom/dexcom/cgm/h/b;)V
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmAlertUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/e;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
