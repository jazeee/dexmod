.class final Lcom/dexcom/cgm/tx/mediator/g;
.super Ljava/lang/Object;
.source "BackfillAlgorithm.java"


# instance fields
.field private final a:J

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/dexcom/cgm/model/Glucose;

.field private d:Lcom/dexcom/cgm/model/Glucose;

.field private e:Lcom/dexcom/cgm/model/Glucose;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->d:Lcom/dexcom/cgm/model/Glucose;

    .line 127
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    .line 134
    iput-wide p2, p0, Lcom/dexcom/cgm/tx/mediator/g;->a:J

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->c:Lcom/dexcom/cgm/model/Glucose;

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->b:Ljava/util/Iterator;

    .line 137
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/g;->e()V

    .line 138
    return-void
.end method

.method private a(Lcom/dexcom/cgm/model/Glucose;)V
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 259
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    .line 269
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/g;->d:Lcom/dexcom/cgm/model/Glucose;

    .line 270
    return-void

    .line 261
    :cond_1
    invoke-static {p1}, Lcom/dexcom/cgm/tx/mediator/g;->b(Lcom/dexcom/cgm/model/Glucose;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    goto :goto_0
.end method

.method private static b(Lcom/dexcom/cgm/model/Glucose;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->isStopped(Lcom/dexcom/cgm/model/enums/AlgorithmState;)Z

    move-result v3

    .line 276
    sget-object v4, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 277
    :goto_0
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->isBgGeneratedOnTx()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 276
    goto :goto_0
.end method

.method private e()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x168

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v0, -0x1

    .line 165
    iput-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    .line 166
    iput-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 172
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->c:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 185
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/g;->a(Lcom/dexcom/cgm/model/Glucose;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v4

    .line 191
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->d:Lcom/dexcom/cgm/model/Glucose;

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->d:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    .line 200
    :goto_1
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->c:Lcom/dexcom/cgm/model/Glucose;

    if-ne v0, v1, :cond_6

    .line 205
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->isStopped(Lcom/dexcom/cgm/model/enums/AlgorithmState;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 207
    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/g;->b(Lcom/dexcom/cgm/model/Glucose;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    if-eqz v1, :cond_5

    .line 211
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    .line 212
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    .line 223
    :cond_2
    :goto_2
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/g;->a(Lcom/dexcom/cgm/model/Glucose;)V

    .line 253
    :cond_3
    :goto_3
    return-void

    .line 197
    :cond_4
    iget-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->a:J

    goto :goto_1

    .line 216
    :cond_5
    sub-long v6, v4, v2

    .line 217
    cmp-long v1, v6, v12

    if-lez v1, :cond_2

    .line 219
    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    .line 220
    iput-wide v4, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    goto :goto_2

    .line 229
    :cond_6
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    if-eqz v1, :cond_7

    .line 231
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v2

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getSequenceNumber()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v10, v2

    if-gez v1, :cond_8

    .line 233
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/g;->e:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    .line 234
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    .line 235
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/g;->a(Lcom/dexcom/cgm/model/Glucose;)V

    goto :goto_3

    .line 239
    :cond_7
    cmp-long v1, v4, v2

    if-lez v1, :cond_8

    .line 241
    sub-long v6, v4, v2

    .line 242
    cmp-long v1, v6, v12

    if-lez v1, :cond_8

    .line 244
    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    .line 245
    iput-wide v4, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    .line 246
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/g;->a(Lcom/dexcom/cgm/model/Glucose;)V

    goto :goto_3

    .line 251
    :cond_8
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/g;->a(Lcom/dexcom/cgm/model/Glucose;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    return-wide v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 152
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/g;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/g;->e()V

    .line 158
    return-void
.end method
