.class public final Lcom/dexcom/cgm/test/e;
.super Ljava/lang/Object;
.source "TransmitterMediatorSimInterceptor.java"

# interfaces
.implements Lcom/dexcom/cgm/component_provider/o;


# instance fields
.field private m_callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/tx/mediator/aa;",
            ">;"
        }
    .end annotation
.end field

.field private m_connectionErrorCount:I

.field private m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

.field private m_lastConnectionSuccessTime:J

.field private m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

.field private m_target:Lcom/dexcom/cgm/tx/mediator/bh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/test/e;->m_callbacks:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/test/g;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/test/g;-><init>(Lcom/dexcom/cgm/test/e;)V

    iput-object v0, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/test/e;->m_lastConnectionSuccessTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/test/e;J)J
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/dexcom/cgm/test/e;->m_lastConnectionSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/test/e;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/dexcom/cgm/test/e;)I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createGlucose(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;

    .line 259
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getSequenceNumber()J

    move-result-wide v0

    .line 260
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getAlgorithmState()Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    .line 261
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getGlucoseValue()I

    move-result v3

    .line 262
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getTrendRate()D

    move-result-wide v4

    new-instance v6, Lcom/dexcom/cgm/k/m;

    new-instance v7, Lcom/dexcom/cgm/k/j;

    .line 264
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getSystemTimestamp()J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v8, Lcom/dexcom/cgm/k/n;

    .line 265
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getTransmitterTimeStamp()J

    move-result-wide v12

    invoke-direct {v8, v12, v13}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v6, v7, v8}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    new-instance v7, Lcom/dexcom/cgm/model/TransmitterId;

    .line 266
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getTransmitterID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/dexcom/cgm/k/n;

    .line 267
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getSessionSignature()J

    move-result-wide v12

    invoke-direct {v8, v12, v13}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 268
    invoke-virtual {v9}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->wasBackfilled()Z

    move-result v9

    .line 258
    invoke-static/range {v0 .. v9}, Lcom/dexcom/cgm/model/Glucose;->createWithTxData(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    .line 269
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_0
    return-object v10
.end method

.method private createSimCommand(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/test/api/SimCommand;
    .locals 5

    .prologue
    .line 180
    .line 182
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 180
    invoke-static {p1, v0}, Lcom/dexcom/cgm/k/m;->convertTransmitterTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/n;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/dexcom/cgm/test/f;->a:[I

    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown command type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 191
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 189
    invoke-static {v2, v3, v0, v1}, Lcom/dexcom/cgm/test/api/SimCommand;->createStartSensor(JJ)Lcom/dexcom/cgm/test/api/SimCommand;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 197
    :pswitch_1
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 198
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 196
    invoke-static {v2, v3, v0, v1}, Lcom/dexcom/cgm/test/api/SimCommand;->createStopSensor(JJ)Lcom/dexcom/cgm/test/api/SimCommand;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 205
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 206
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v4

    .line 203
    invoke-static {v2, v3, v0, v1, v4}, Lcom/dexcom/cgm/test/api/SimCommand;->createCalibrate(JJI)Lcom/dexcom/cgm/test/api/SimCommand;

    move-result-object v0

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCommandResponses(Lcom/dexcom/cgm/tx/mediator/ab;Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/tx/mediator/p;
    .locals 10

    .prologue
    .line 278
    new-instance v2, Lcom/dexcom/cgm/k/m;

    new-instance v0, Lcom/dexcom/cgm/k/j;

    .line 279
    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getSystemTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v1, Lcom/dexcom/cgm/k/n;

    .line 280
    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getTransmitterTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v2, v0, v1}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 282
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ab;->getCommandQueue()Ljava/util/List;

    move-result-object v1

    .line 283
    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getCommandResponses()[[B

    move-result-object v3

    .line 284
    array-length v0, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Mismatched simulated command responses to queued commands: expected="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    new-instance v4, Lcom/dexcom/cgm/tx/mediator/q;

    invoke-direct {v4, v1}, Lcom/dexcom/cgm/tx/mediator/q;-><init>(Ljava/util/List;)V

    .line 292
    const/4 v0, 0x0

    .line 293
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 295
    sget-object v6, Lcom/dexcom/cgm/test/f;->a:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 337
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 338
    goto :goto_0

    .line 299
    :pswitch_0
    new-instance v6, Lcom/dexcom/cgm/tx/a/n;

    aget-object v7, v3, v1

    invoke-direct {v6, v7}, Lcom/dexcom/cgm/tx/a/n;-><init>([B)V

    .line 306
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/n;->getApplicationStatusCode()B

    move-result v7

    .line 305
    invoke-static {v7}, Lcom/dexcom/cgm/component_provider/a;->getStartSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v7

    .line 307
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/n;->getRawBytes()[B

    move-result-object v6

    .line 302
    invoke-static {v0, v2, v7, v6}, Lcom/dexcom/cgm/tx/mediator/bb;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)Lcom/dexcom/cgm/tx/mediator/bb;

    move-result-object v0

    .line 301
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/bb;)V

    goto :goto_1

    .line 312
    :pswitch_1
    new-instance v6, Lcom/dexcom/cgm/tx/a/o;

    aget-object v7, v3, v1

    invoke-direct {v6, v7}, Lcom/dexcom/cgm/tx/a/o;-><init>([B)V

    .line 314
    new-instance v7, Lcom/dexcom/cgm/k/n;

    .line 318
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/o;->getSensorStopTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 320
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/o;->getApplicationStatusCode()B

    move-result v8

    .line 319
    invoke-static {v8}, Lcom/dexcom/cgm/component_provider/a;->getStopSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v8

    .line 321
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/o;->getRawBytes()[B

    move-result-object v6

    .line 315
    invoke-static {v0, v2, v7, v8, v6}, Lcom/dexcom/cgm/tx/mediator/bc;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)Lcom/dexcom/cgm/tx/mediator/bc;

    move-result-object v0

    .line 314
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/bc;)V

    goto :goto_1

    .line 326
    :pswitch_2
    new-instance v6, Lcom/dexcom/cgm/tx/a/i;

    aget-object v7, v3, v1

    invoke-direct {v6, v7}, Lcom/dexcom/cgm/tx/a/i;-><init>([B)V

    .line 332
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/i;->getApplicationStatusCode()B

    move-result v7

    .line 331
    invoke-static {v7}, Lcom/dexcom/cgm/b/s;->getMeterEntryType(B)Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v7

    .line 333
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/i;->getRawBytes()[B

    move-result-object v6

    .line 328
    invoke-static {v0, v2, v7, v6}, Lcom/dexcom/cgm/tx/mediator/o;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/MeterEntryType;[B)Lcom/dexcom/cgm/tx/mediator/o;

    move-result-object v0

    .line 327
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/o;)V

    goto :goto_1

    .line 339
    :cond_1
    return-object v4

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDeviceRecord(Lcom/dexcom/cgm/tx/mediator/ab;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;-><init>()V

    .line 355
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    const-string v1, "FF:FF:FF:FF:FF:FF"

    .line 357
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    const-string v1, "1234567890123456"

    .line 358
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationPrimaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    const-string v1, "1234567890123456"

    .line 359
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationSecondaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    return-object v0
.end method

.method private getEvConnectionError(Lcom/dexcom/cgm/test/api/SimTxConnectError;)Lcom/dexcom/cgm/tx/mediator/ao;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/dexcom/cgm/tx/mediator/ap;

    invoke-direct {v1}, Lcom/dexcom/cgm/tx/mediator/ap;-><init>()V

    .line 346
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ap;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnectError;->isTransmitterUnrecoverableError()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ap;->setIsTransmitterUnrecoverableError(Z)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnectError;->getTransmitterStatusCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ap;->setTransmitterStatusCode(B)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ap;->createEvConnectionError()Lcom/dexcom/cgm/tx/mediator/ao;

    move-result-object v0

    return-object v0
.end method

.method private getEvConnectionSuccess(Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/tx/mediator/aq;
    .locals 9

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v1

    .line 221
    new-instance v2, Lcom/dexcom/cgm/k/m;

    new-instance v0, Lcom/dexcom/cgm/k/j;

    .line 222
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getSystemTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v3, Lcom/dexcom/cgm/k/n;

    .line 223
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getTransmitterTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v2, v0, v3}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 224
    new-instance v3, Lcom/dexcom/cgm/k/n;

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getSessionSignature()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 225
    invoke-direct {p0, v1, p1}, Lcom/dexcom/cgm/test/e;->getTransmitterInfo(Lcom/dexcom/cgm/tx/mediator/ab;Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v4

    .line 226
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/test/e;->getDeviceRecord(Lcom/dexcom/cgm/tx/mediator/ab;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v5

    .line 227
    new-instance v6, Lcom/dexcom/cgm/tx/a/l;

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getEgv()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/dexcom/cgm/tx/a/l;-><init>([B)V

    .line 228
    new-instance v0, Lcom/dexcom/cgm/tx/a/h;

    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getCalBounds()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/dexcom/cgm/tx/a/h;-><init>([B)V

    .line 229
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/h;->getCalBoundError0()I

    move-result v7

    if-nez v7, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/dexcom/cgm/test/e;->getCommandResponses(Lcom/dexcom/cgm/tx/mediator/ab;Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/tx/mediator/p;

    move-result-object v7

    .line 234
    new-instance v8, Lcom/dexcom/cgm/tx/mediator/ar;

    invoke-direct {v8}, Lcom/dexcom/cgm/tx/mediator/ar;-><init>()V

    .line 235
    invoke-virtual {v8, v4}, Lcom/dexcom/cgm/tx/mediator/ar;->setTransmitterInfo(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v4

    .line 236
    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/tx/mediator/ar;->setDeviceRecord(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v4

    .line 237
    invoke-virtual {v4, v2}, Lcom/dexcom/cgm/tx/mediator/ar;->setTransmitterSyncTime(Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v4

    .line 238
    invoke-virtual {v4, v3}, Lcom/dexcom/cgm/tx/mediator/ar;->setSessionSignature(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v4

    .line 240
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    .line 239
    invoke-static {v1, v2, v3, v6}, Lcom/dexcom/cgm/b/c;->createWithEgvResponse(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/a/l;)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/dexcom/cgm/tx/mediator/ar;->setGlucose(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v1

    .line 244
    invoke-static {v0, v2}, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;->create(Lcom/dexcom/cgm/tx/a/h;Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ar;->setCalBounds(Lcom/dexcom/cgm/model/CalBounds;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v7}, Lcom/dexcom/cgm/tx/mediator/ar;->setCommandResponses(Lcom/dexcom/cgm/tx/mediator/p;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->isTransmitterLowBattery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ar;->setIsTransmitterLowBattery(Z)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getBackfilledRecords()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/test/e;->createGlucose(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ar;->setBackfillGlucose(Ljava/util/List;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/k/n;

    .line 248
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/l;->getTransmitterTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ar;->setBackfillMinStartTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ar;->build()Lcom/dexcom/cgm/tx/mediator/aq;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method private getTransmitterInfo(Lcom/dexcom/cgm/tx/mediator/ab;Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 10

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/tx/a/q;

    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getTransmitterVersion()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/tx/a/q;-><init>([B)V

    .line 375
    new-instance v2, Lcom/dexcom/cgm/tx/a/p;

    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getTransmitterVersionExtended()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/tx/a/p;-><init>([B)V

    .line 376
    new-instance v3, Lcom/dexcom/cgm/tx/a/m;

    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getFirmwareVersion()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dexcom/cgm/tx/a/m;-><init>([B)V

    .line 377
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    new-instance v4, Lcom/dexcom/cgm/k/m;

    new-instance v5, Lcom/dexcom/cgm/k/j;

    .line 379
    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getSystemTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v6, Lcom/dexcom/cgm/k/n;

    .line 380
    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/SimTxConnect;->getTransmitterTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v4, v5, v6}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 377
    invoke-static {v0, v4, v1, v2, v3}, Lcom/dexcom/cgm/appcompatability/webservice/b;->create(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/a/q;Lcom/dexcom/cgm/tx/a/p;Lcom/dexcom/cgm/tx/a/m;)Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final disableCommunicationLoop()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->disableCommunicationLoop()V

    .line 122
    return-void
.end method

.method public final enableCommunicationLoop()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->enableCommunicationLoop()V

    .line 116
    return-void
.end method

.method public final getConnectionErrorCount()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/dexcom/cgm/test/e;->m_connectionErrorCount:I

    return v0
.end method

.method public final getGlucoseList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/test/api/SimTxConnect;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    :goto_0
    if-gt p2, p3, :cond_0

    .line 172
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/SimTxConnect;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/test/e;->getEvConnectionSuccess(Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/tx/mediator/aq;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/aq;->getGlucose()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-object v1
.end method

.method public final getLastConnectionSuccessTime()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/dexcom/cgm/test/e;->m_lastConnectionSuccessTime:J

    return-wide v0
.end method

.method public final isBluetoothOn()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->isBluetoothOn()Z

    move-result v0

    return v0
.end method

.method public final isCommunicationLoopEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->isCommunicationLoopEnabled()Z

    move-result v0

    return v0
.end method

.method public final registerCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public final setConnectionCriteriaProvider(Lcom/dexcom/cgm/tx/mediator/ah;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/bh;->setConnectionCriteriaProvider(Lcom/dexcom/cgm/tx/mediator/ah;)V

    .line 83
    iput-object p1, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    .line 84
    return-void
.end method

.method public final setTarget(Lcom/dexcom/cgm/tx/mediator/bh;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    iget-object v1, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bh;->unregisterCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    iget-object v1, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bh;->registerCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V

    .line 71
    return-void
.end method

.method public final simulateConnectionCreate(Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;)Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;
    .locals 7

    .prologue
    .line 137
    new-instance v4, Lcom/dexcom/cgm/k/m;

    new-instance v0, Lcom/dexcom/cgm/k/j;

    .line 138
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->getDisplayTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v1, Lcom/dexcom/cgm/k/n;

    .line 139
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->getTransmitterTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v4, v0, v1}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getCommandQueue()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 146
    invoke-direct {p0, v4, v0}, Lcom/dexcom/cgm/test/e;->createSimCommand(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/test/api/SimCommand;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;

    .line 149
    invoke-virtual {v4}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 150
    invoke-virtual {v4}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/dexcom/cgm/test/api/SimConnectCreateResponse;-><init>(JJLjava/util/ArrayList;)V

    return-object v1
.end method

.method public final simulateConnectionError(Lcom/dexcom/cgm/test/api/SimTxConnectError;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/test/e;->getEvConnectionError(Lcom/dexcom/cgm/test/api/SimTxConnectError;)Lcom/dexcom/cgm/tx/mediator/ao;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V

    .line 165
    return-void
.end method

.method public final simulateConnectionSuccess(Lcom/dexcom/cgm/test/api/SimTxConnect;)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/test/e;->getEvConnectionSuccess(Lcom/dexcom/cgm/test/api/SimTxConnect;)Lcom/dexcom/cgm/tx/mediator/aq;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V

    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evInterval()V

    .line 159
    return-void
.end method

.method public final simulateIncompatibleTransmitter()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    const-string v2, "DexcomSIM"

    invoke-interface {v1, v0, v2}, Lcom/dexcom/cgm/tx/mediator/aa;->evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public final simulateInterval()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_interceptCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evInterval()V

    .line 133
    return-void
.end method

.method public final teardown()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->teardown()V

    .line 77
    return-void
.end method

.method public final unregisterCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public final unsetConnectionCriteriaProvider()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/test/e;->m_target:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->unsetConnectionCriteriaProvider()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/test/e;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    .line 91
    return-void
.end method
