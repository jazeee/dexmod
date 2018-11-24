.class final Lcom/dexcom/cgm/tx/mediator/i;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "BackfillStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/al;

.field private c:Lcom/dexcom/cgm/tx/mediator/cc;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 25
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/al;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/tx/mediator/al;-><init>(I)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 31
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 208
    new-instance v0, Lcom/dexcom/cgm/k/n;

    const-wide/16 v2, 0x1

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getEgvResponse()Lcom/dexcom/cgm/tx/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/l;->getTransmitterTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 209
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setBackfillMinStartTime(Lcom/dexcom/cgm/k/n;)V

    .line 210
    return-void
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .locals 6

    .prologue
    .line 138
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/j;->a:[I

    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/mediator/at;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2196
    :goto_0
    return-void

    .line 2155
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStreamPacketReceived:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 2156
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v0, p3}, Lcom/dexcom/cgm/tx/mediator/al;->append([B)V
    :try_end_0
    .catch Lcom/dexcom/cgm/tx/mediator/am; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2158
    :catch_0
    move-exception v0

    .line 2160
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/am;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2161
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto :goto_0

    .line 2167
    :pswitch_1
    invoke-static {p3}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 2168
    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 2170
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response during backfill: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStreamEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 2175
    new-instance v0, Lcom/dexcom/cgm/tx/a/k;

    invoke-direct {v0, p3}, Lcom/dexcom/cgm/tx/a/k;-><init>([B)V

    .line 2177
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamStatusCode()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2179
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid stream status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamStatusCode()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2180
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 2183
    :cond_1
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getTotalPacketLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 2185
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamId()B

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/al;->getStreamId()B

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2187
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid stream ID: expected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamId()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " actual="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/al;->getStreamId()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2188
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto/16 :goto_0

    .line 2192
    :cond_2
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamCrc()I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/al;->getStreamCrc()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2194
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid stream CRC: expected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/k;->getStreamCrc()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " actual="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/al;->getStreamCrc()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2195
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto/16 :goto_0

    .line 2200
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->b:Lcom/dexcom/cgm/tx/mediator/al;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setBackfillStream(Lcom/dexcom/cgm/tx/mediator/al;)V

    .line 2201
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/i;->a()V

    .line 2203
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 7

    .prologue
    .line 107
    invoke-interface {p1, p3}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to enable notifications: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillExchangeNotificationsEnabled:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/cc;->b()J

    move-result-wide v2

    .line 117
    const-string v4, "TransmitterBLE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Backfill range: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/cc;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/a/j;->createBackfillStreamRequest(JJ)[B

    move-result-object v0

    .line 119
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStreamStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 126
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 129
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStreamStartWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1093
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->isTransmitterInfoDetailsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getFeatureFlags()I

    move-result v0

    .line 1096
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1098
    const/4 v0, 0x1

    .line 43
    :goto_0
    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 61
    :goto_1
    return-void

    .line 1101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2065
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getBackfillCriteria()Lcom/dexcom/cgm/tx/mediator/h;

    move-result-object v0

    .line 2066
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/h;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 2067
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2069
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2070
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2071
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v3

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2072
    invoke-virtual {v4}, Lcom/dexcom/cgm/tx/mediator/ac;->getSessionSignature()Lcom/dexcom/cgm/k/n;

    move-result-object v4

    iget-object v5, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 2073
    invoke-virtual {v5}, Lcom/dexcom/cgm/tx/mediator/ac;->getEgvResponse()Lcom/dexcom/cgm/tx/a/l;

    move-result-object v5

    .line 2069
    invoke-static {v1, v3, v4, v5}, Lcom/dexcom/cgm/b/c;->createWithEgvResponse(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/a/l;)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    .line 2074
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2076
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/h;->getMaxBackfillSeconds()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/h;->getMinStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-static {v2, v4, v5, v0}, Lcom/dexcom/cgm/tx/mediator/b;->a(Ljava/util/List;JLcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/cc;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_3

    .line 2079
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2081
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reversed backfill range "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 2082
    const/4 v0, 0x0

    .line 2085
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setBackfillRequestStartTime(J)V

    .line 2086
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cc;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setBackfillRequestLength(J)V

    .line 49
    :cond_3
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->c:Lcom/dexcom/cgm/tx/mediator/cc;

    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillExchangeEnableNotifications:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 54
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->c(Lcom/dexcom/cgm/tx/mediator/at;)V

    goto/16 :goto_1

    .line 58
    :cond_4
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/i;->a()V

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/i;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto/16 :goto_1
.end method
