.class final Lcom/dexcom/cgm/tx/mediator/bo;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bo;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterBattery()Lcom/dexcom/cgm/model/TransmitterBattery;

    move-result-object v2

    .line 487
    if-eqz v2, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v3, v3, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v4, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->Battery:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v3, v4, v2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 492
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 493
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getAdvertisingSync()Lcom/dexcom/cgm/tx/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/a/b;->getOperatingIntervalMilliseconds()J

    move-result-wide v2

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v4}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v4

    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v5}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v5

    .line 496
    new-instance v6, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    invoke-direct {v6}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;-><init>()V

    .line 497
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 498
    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 499
    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ac;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v6

    .line 500
    invoke-virtual {v6, v2, v3}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setOperatingIntervalMs(J)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 501
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationPrimaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 502
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationSecondaryKey(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 503
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v2

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getSessionSignature()Lcom/dexcom/cgm/k/n;

    move-result-object v6

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 508
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 511
    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ac;->getEgvResponse()Lcom/dexcom/cgm/tx/a/l;

    move-result-object v7

    .line 507
    invoke-static {v3, v4, v6, v7}, Lcom/dexcom/cgm/b/c;->createWithEgvResponse(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/a/l;)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v3

    .line 512
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 513
    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ac;->getCalBoundsResponse()Lcom/dexcom/cgm/tx/a/h;

    move-result-object v7

    .line 512
    invoke-static {v7, v4}, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;->create(Lcom/dexcom/cgm/tx/a/h;Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v7

    .line 515
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/ac;->getCommandResponses()Lcom/dexcom/cgm/tx/mediator/p;

    move-result-object v8

    .line 517
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 518
    invoke-virtual {v9}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 520
    invoke-virtual {v10}, Lcom/dexcom/cgm/tx/mediator/ac;->getBackfillStream()Lcom/dexcom/cgm/tx/mediator/al;

    move-result-object v10

    .line 517
    invoke-static {v9, v4, v10}, Lcom/dexcom/cgm/b/c;->createWithBackfillStream(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/mediator/al;)Ljava/util/ArrayList;

    move-result-object v15

    .line 522
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 523
    invoke-virtual {v9}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v9

    invoke-static {v9}, Lcom/dexcom/cgm/tx/a/j;->isTransmitterLowBattery(B)Z

    move-result v9

    .line 524
    new-instance v10, Lcom/dexcom/cgm/tx/mediator/ar;

    invoke-direct {v10}, Lcom/dexcom/cgm/tx/mediator/ar;-><init>()V

    .line 525
    invoke-virtual {v10, v5}, Lcom/dexcom/cgm/tx/mediator/ar;->setTransmitterInfo(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v5

    .line 526
    invoke-virtual {v5, v2}, Lcom/dexcom/cgm/tx/mediator/ar;->setDeviceRecord(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 527
    invoke-virtual {v2, v4}, Lcom/dexcom/cgm/tx/mediator/ar;->setTransmitterSyncTime(Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v6}, Lcom/dexcom/cgm/tx/mediator/ar;->setSessionSignature(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 529
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ar;->setGlucose(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 530
    invoke-virtual {v2, v7}, Lcom/dexcom/cgm/tx/mediator/ar;->setCalBounds(Lcom/dexcom/cgm/model/CalBounds;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 531
    invoke-virtual {v2, v8}, Lcom/dexcom/cgm/tx/mediator/ar;->setCommandResponses(Lcom/dexcom/cgm/tx/mediator/p;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 532
    invoke-virtual {v2, v15}, Lcom/dexcom/cgm/tx/mediator/ar;->setBackfillGlucose(Ljava/util/List;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 533
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getBackfillMinStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ar;->setBackfillMinStartTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 534
    invoke-virtual {v2, v9}, Lcom/dexcom/cgm/tx/mediator/ar;->setIsTransmitterLowBattery(Z)Lcom/dexcom/cgm/tx/mediator/ar;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ar;->build()Lcom/dexcom/cgm/tx/mediator/aq;

    move-result-object v22

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 538
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getAdvertisingSync()Lcom/dexcom/cgm/tx/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/a/b;->getAbsoluteTimeMilliseconds()I

    move-result v2

    int-to-long v9, v2

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getDisconnectTimestamp()Lcom/dexcom/cgm/k/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 540
    invoke-virtual {v4}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectTimestamp()Lcom/dexcom/cgm/k/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v4

    sub-long v11, v2, v4

    .line 541
    invoke-virtual/range {v22 .. v22}, Lcom/dexcom/cgm/tx/mediator/aq;->getGlucose()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v5

    .line 542
    invoke-virtual/range {v22 .. v22}, Lcom/dexcom/cgm/tx/mediator/aq;->getGlucose()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    .line 543
    new-instance v2, Lcom/dexcom/cgm/model/BluetoothEventSuccess;

    .line 544
    invoke-virtual/range {v22 .. v22}, Lcom/dexcom/cgm/tx/mediator/aq;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 548
    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/tx/mediator/ad;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 549
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/ac;->getDisconnectStatus()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 552
    invoke-virtual {v13}, Lcom/dexcom/cgm/tx/mediator/ac;->getRssi()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 553
    invoke-virtual {v14}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v14

    .line 554
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    move-object/from16 v16, v0

    .line 555
    invoke-virtual/range {v16 .. v16}, Lcom/dexcom/cgm/tx/mediator/ac;->getBackfillRequestStartTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    move-object/from16 v18, v0

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/dexcom/cgm/tx/mediator/ac;->getBackfillRequestLength()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    move-object/from16 v20, v0

    .line 557
    invoke-virtual/range {v20 .. v20}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectionLog()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bo;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    move-object/from16 v21, v0

    .line 558
    invoke-virtual/range {v21 .. v21}, Lcom/dexcom/cgm/tx/mediator/ac;->getWarnings()Ljava/util/ArrayList;

    move-result-object v21

    invoke-direct/range {v2 .. v21}, Lcom/dexcom/cgm/model/BluetoothEventSuccess;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/n;Ljava/lang/String;IJJIIIJJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 560
    invoke-static {}, Lcom/dexcom/cgm/model/GsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 561
    new-instance v3, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    invoke-direct {v3}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;-><init>()V

    .line 562
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    .line 563
    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setRecordRtcTime(J)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    .line 564
    invoke-virtual {v3, v5}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setGlucoseTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionSuccess:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 565
    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setBluetoothEventType(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    .line 566
    invoke-virtual {v3, v9, v10}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setPayloadLong(J)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v2}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setPayloadString(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v3

    .line 568
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothEventRecord;

    move-result-object v3

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dexcom/cgm/tx/mediator/bo;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v4, v4, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v4}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/g/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/dexcom/cgm/g/a;->log(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    .line 571
    const-string v3, "TransmitterBLE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BluetoothEvent: ConnectionSuccess, Payload: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/tx/mediator/bo;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v2, v2, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dexcom/cgm/tx/mediator/aa;

    .line 575
    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V

    goto :goto_0

    .line 577
    :cond_1
    return-void
.end method
