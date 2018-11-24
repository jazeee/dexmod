.class public Lcom/dexcom/cgm/d/b;
.super Ljava/lang/Object;
.source "CgmDataAccessLayerComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/d/a;


# static fields
.field private static final DISPLAY_TYPE_PHONE:B = 0x2t

.field private static final OPCODE_AUTHENTICATION_STATUS:B = 0x5t

.field private static final OPCODE_CHALLENGE_FROM_DISPLAY_USING_APP_KEY:B = 0x2t

.field private static final OPCODE_CHALLENGE_FROM_DISPLAY_USING_TX_ID:B = 0x1t

.field private static final OPCODE_GENERIC_RESPONSE_CODE:B = -0x1t

.field private static final OPCODE_HASH_FROM_DISPLAY:B = 0x4t

.field private static final OPCODE_KEEP_CONNECTION_ALIVE:B = 0x6t

.field private static final OPCODE_REPLY_TO_CHALLENGE:B = 0x3t


# instance fields
.field private final m_database:Lcom/dexcom/cgm/e/f;

.field private final m_keyValueAccessor:Lcom/dexcom/cgm/d/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/e/f;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    .line 54
    new-instance v0, Lcom/dexcom/cgm/d/e;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/d/e;-><init>(Lcom/dexcom/cgm/e/f;)V

    iput-object v0, p0, Lcom/dexcom/cgm/d/b;->m_keyValueAccessor:Lcom/dexcom/cgm/d/e;

    .line 55
    return-void
.end method

.method public static create(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/d/a;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/dexcom/cgm/d/b;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/d/b;-><init>(Lcom/dexcom/cgm/e/f;)V

    return-object v0
.end method

.method private static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 4070
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createChallengeFromDisplayUsingAppKey([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 4044
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4045
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4046
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4047
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4048
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createChallengeFromDisplayUsingTxId([B)[B
    .locals 3

    .prologue
    .line 4035
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4036
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4037
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    .line 4038
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4039
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createHashFromDisplay([B)[B
    .locals 2

    .prologue
    .line 4053
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4054
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4055
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4056
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static createKeepConnectionAliveRequest(I)[B
    .locals 3

    .prologue
    .line 4062
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4063
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-byte v2, p0

    .line 4064
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4065
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static filter(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2024
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2025
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 2027
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2046
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2051
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/model/Glucose;

    .line 2052
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v1, v2

    .line 2035
    :goto_1
    if-eqz v1, :cond_3

    .line 2037
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2039
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2059
    :cond_4
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 2060
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isBgGeneratedOnTx()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v8, 0x3c

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    .line 2041
    :cond_6
    return-object v3
.end method

.method public static filterDisplayOnlyExcluded(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2014
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dexcom/cgm/d/b;->filter(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static filterDisplayOnlyIncluded(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2019
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dexcom/cgm/d/b;->filter(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static isAdjacentCalibrationGlucose(Lcom/dexcom/cgm/model/Glucose;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/Glucose;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3046
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3060
    :goto_0
    return v0

    .line 3051
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 3052
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 3054
    goto :goto_0

    .line 3059
    :cond_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3060
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->isBgGeneratedOnTx()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isAuthenticationStatus([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4080
    const/4 v1, 0x5

    aget-byte v2, p0, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGenericResponse([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4085
    const/4 v1, -0x1

    aget-byte v2, p0, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isReplyToChallenge([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4075
    const/4 v1, 0x3

    aget-byte v2, p0, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final eraseAndReset()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->eraseAndResetState()V

    .line 61
    return-void
.end method

.method public final eraseAndResetGlucose()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->eraseAndResetGlucose()V

    .line 67
    return-void
.end method

.method public final getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertSchedules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readAlertSchedules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readUserAlertRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertStateRecords()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readAlertStateRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "[",
            "Lcom/dexcom/cgm/model/enums/BluetoothEventType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/dexcom/cgm/e/f;->readBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCalibrationRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/e/p;->MeterSystemTime:Lcom/dexcom/cgm/e/p;

    invoke-interface {v0, p1, p2, v1}, Lcom/dexcom/cgm/e/f;->readMeterRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/e/l;->EgvSystemTime:Lcom/dexcom/cgm/e/l;

    invoke-interface {v0, p1, p2, v1}, Lcom/dexcom/cgm/e/f;->readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/dexcom/cgm/model/CgmData;

    .line 1019
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/dexcom/cgm/d/b;->filter(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    invoke-direct {v1, v0}, Lcom/dexcom/cgm/model/CgmData;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final getFollowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readFollowerRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGlucoseRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/e/l;->EgvSystemTime:Lcom/dexcom/cgm/e/l;

    invoke-interface {v0, p1, p2, v1}, Lcom/dexcom/cgm/e/f;->readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGlucoseRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dexcom/cgm/e/f;->readEGVRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyValues()Lcom/dexcom/cgm/d/e;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_keyValueAccessor:Lcom/dexcom/cgm/d/e;

    return-object v0
.end method

.method public final getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestCommands(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->getLatestCommands(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestGlucoseRecord()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readLatestEGVRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestSessionRecord()Lcom/dexcom/cgm/model/SensorSession;
    .locals 4

    .prologue
    .line 228
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    .line 230
    iget-object v2, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v3, Lcom/dexcom/cgm/e/r;->SessionSystemTime:Lcom/dexcom/cgm/e/r;

    invoke-interface {v2, v1, v0, v3}, Lcom/dexcom/cgm/e/f;->readSensorSessionRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)Ljava/util/List;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/SensorSession;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPendingCalibrationCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readPendingCalibrationCommands()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPendingStartStopCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readPendingStartStopCommands()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTechSupportRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/e/f;->readTechSupportLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readLatestTransmitterInfoRecord()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/e/w;->UserEventSystemTime:Lcom/dexcom/cgm/e/w;

    invoke-interface {v0, p1, p2, v1}, Lcom/dexcom/cgm/e/f;->readUserEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasCompletedSensorWarmUpAtLeastOnce()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->hasCompletedSensorWarmUpAtLeastOnce()Z

    move-result v0

    return v0
.end method

.method public final readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/e/f;->readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final resetAlertSettings()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->eraseAndResetAlertSettings()V

    .line 349
    return-void
.end method

.method public final saveCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V

    .line 330
    return-void
.end method

.method public final saveDebugLog(Lcom/dexcom/cgm/model/DebugLogRecord;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createDebugLogRecord(Lcom/dexcom/cgm/model/DebugLogRecord;)V

    .line 336
    return-void
.end method

.method public final teardown()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->teardown()V

    .line 72
    return-void
.end method

.method public final updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V

    .line 272
    return-void
.end method

.method public final updateAlertStateRecords([Lcom/dexcom/cgm/model/AlertStateRecord;)V
    .locals 4

    .prologue
    .line 127
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 129
    iget-object v3, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v3, v2}, Lcom/dexcom/cgm/e/f;->updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public final writeAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 143
    return-void
.end method

.method public final writeBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    .line 297
    return-void
.end method

.method public final writeCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V

    .line 96
    return-void
.end method

.method public final writeCalibrationRecord(Lcom/dexcom/cgm/model/Meter;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createMeterRecord(Lcom/dexcom/cgm/model/Meter;)V

    .line 84
    return-void
.end method

.method public final writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createCommandRecord(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 193
    return-void
.end method

.method public final writeFollowers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->setFollowers(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public final writeGlucoseRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createEGVRecords(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public final writeOrUpdateAlertSettingsRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 102
    return-void
.end method

.method public final writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createSensorSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 78
    return-void
.end method

.method public final writeTechSupportLog(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createTechSupportLogRecord(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V

    .line 284
    return-void
.end method

.method public final writeTransmitter(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched TransmitterId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/e/f;->createOrUpdateTransmitterDetails(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    .line 116
    return-void
.end method

.method public final writeUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/d/b;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->createUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V

    .line 122
    return-void
.end method
