.class final Lcom/dexcom/cgm/tx/mediator/r;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "CgmCommandStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;

.field private c:I

.field private d:Lcom/dexcom/cgm/k/m;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 29
    iput v4, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/t;

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/t;-><init>(Lcom/dexcom/cgm/tx/mediator/r;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 39
    return-void
.end method

.method private a(I)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getCgmCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    return-object v0
.end method

.method private a(Lcom/dexcom/cgm/model/CgmCommand$CommandType;)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 4

    .prologue
    .line 326
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/r;->a(I)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected command response: actual="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_0
    return-object v0
.end method

.method private a(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getCgmCommands()Ljava/util/List;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 1150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 1152
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 1153
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 1155
    :cond_1
    const/4 v0, 0x1

    .line 113
    :goto_0
    if-eqz v0, :cond_3

    .line 1163
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createTxTimeAndSessionSignatureRequest()[B

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestTxTimeAndSessionSignature:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1165
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestTxTimeAndSessionSignatureWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestTxTimeAndSessionSignatureIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1168
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 139
    :goto_1
    return-void

    .line 1158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_1

    .line 123
    :cond_4
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/r;->a(I)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/s;->a:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid command type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1173
    :pswitch_0
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 1174
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v1

    .line 1175
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1173
    invoke-static {v1, v0}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1176
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1177
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1178
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 1176
    invoke-static {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/a/j;->createStartSensorSessionRequest(JJ)[B

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStartSession:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1181
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStartSessionWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStartSessionIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1184
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_1

    .line 1189
    :pswitch_1
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 1190
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v1

    .line 1191
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1189
    invoke-static {v1, v0}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1192
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1193
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 1192
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/a/j;->createStopSensorSessionRequest(J)[B

    move-result-object v0

    .line 1195
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStopSession:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1196
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStopSessionWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestStopSessionIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1199
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto/16 :goto_1

    .line 1204
    :pswitch_2
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 1205
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v1

    .line 1206
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 1204
    invoke-static {v1, v2}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/m;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1207
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    .line 1208
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    .line 1209
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v0

    .line 1207
    invoke-static {v2, v3, v0}, Lcom/dexcom/cgm/tx/a/j;->createCalibrationRequest(JI)[B

    move-result-object v0

    .line 1211
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestCalibrate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1212
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestCalibrateWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandRequestCalibrateIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1215
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto/16 :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 6

    .prologue
    .line 25
    .line 1237
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/model/CgmCommand$CommandType;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 1239
    new-instance v1, Lcom/dexcom/cgm/tx/a/n;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/tx/a/n;-><init>([B)V

    .line 1241
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/n;->getTransmitterStatusCode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1242
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1244
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1245
    :goto_0
    return-void

    .line 1248
    :cond_0
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/n;->getApplicationStatusCode()B

    move-result v2

    .line 1249
    invoke-static {v2}, Lcom/dexcom/cgm/component_provider/a;->getStartSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v2

    .line 1252
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    invoke-static {v0, v3, v2, p2}, Lcom/dexcom/cgm/tx/mediator/bb;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)Lcom/dexcom/cgm/tx/mediator/bb;

    move-result-object v0

    .line 1258
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/n;->getSessionSignature()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dexcom/cgm/k/n;->create(J)Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setSessionSignature(Lcom/dexcom/cgm/k/n;)V

    .line 1259
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandResponseStartSession:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1260
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setCommandResponse(Lcom/dexcom/cgm/tx/mediator/bb;)V

    .line 1261
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    .line 1262
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 8

    .prologue
    .line 25
    .line 1267
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/model/CgmCommand$CommandType;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 1269
    new-instance v1, Lcom/dexcom/cgm/tx/a/o;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/tx/a/o;-><init>([B)V

    .line 1271
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/o;->getTransmitterStatusCode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1272
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1275
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/o;->getApplicationStatusCode()B

    move-result v2

    .line 1279
    invoke-static {v2}, Lcom/dexcom/cgm/component_provider/a;->getStopSessionLogType(B)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v2

    .line 1282
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    new-instance v4, Lcom/dexcom/cgm/k/n;

    .line 1285
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/o;->getSensorStopTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 1282
    invoke-static {v0, v3, v4, v2, p2}, Lcom/dexcom/cgm/tx/mediator/bc;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;[B)Lcom/dexcom/cgm/tx/mediator/bc;

    move-result-object v0

    .line 1289
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/o;->getSessionSignature()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dexcom/cgm/k/n;->create(J)Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setSessionSignature(Lcom/dexcom/cgm/k/n;)V

    .line 1290
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandResponseStopSession:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1291
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setCommandResponse(Lcom/dexcom/cgm/tx/mediator/bc;)V

    .line 1292
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    .line 1293
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    .line 25
    .line 1298
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/model/CgmCommand$CommandType;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 1300
    new-instance v1, Lcom/dexcom/cgm/tx/a/i;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/tx/a/i;-><init>([B)V

    .line 1302
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/i;->getTransmitterStatusCode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1303
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1306
    :goto_0
    return-void

    .line 1309
    :cond_0
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/i;->getApplicationStatusCode()B

    move-result v1

    .line 1310
    invoke-static {v1}, Lcom/dexcom/cgm/b/s;->getMeterEntryType(B)Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v1

    .line 1312
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/r;->d:Lcom/dexcom/cgm/k/m;

    invoke-static {v0, v2, v1, p2}, Lcom/dexcom/cgm/tx/mediator/o;->createComplete(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/MeterEntryType;[B)Lcom/dexcom/cgm/tx/mediator/o;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandResponseCalibrate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1319
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setCommandResponse(Lcom/dexcom/cgm/tx/mediator/o;)V

    .line 1320
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->c:I

    .line 1321
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    .line 25
    .line 2220
    new-instance v0, Lcom/dexcom/cgm/tx/a/s;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/s;-><init>([B)V

    .line 2222
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/s;->getTransmitterStatusCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 2223
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v1

    invoke-static {v1}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 2226
    :goto_0
    return-void

    .line 2230
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/s;->getSessionSignature()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dexcom/cgm/k/n;->create(J)Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setSessionSignature(Lcom/dexcom/cgm/k/n;)V

    .line 2231
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandResponseTxTimeAndSessionSignature:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 2232
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 72
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 57
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic write failure: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/r;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 52
    return-void
.end method
