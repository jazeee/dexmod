.class final Lcom/dexcom/cgm/b/o;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dexcom/cgm/b/j;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/b/o;->d()V

    .line 31
    return-void
.end method

.method private static a(Ljava/util/List;ILcom/dexcom/cgm/model/CgmCommand;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;I",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ")I"
        }
    .end annotation

    .prologue
    .line 163
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 166
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_1
    return v1

    .line 163
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private a(Lcom/dexcom/cgm/model/CgmCommand;)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 249
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 252
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/d/a;->getLatestCommands(I)Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 108
    const v1, 0x7fffffff

    move v2, v1

    move v3, v0

    move v1, v0

    .line 109
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_8

    .line 111
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 112
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v6

    iget-object v7, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v7}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    .line 137
    :goto_3
    if-ltz v1, :cond_7

    .line 139
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 140
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    if-ne v3, v4, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v3, v4, :cond_6

    .line 144
    if-ge v1, v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v6

    sget-object v7, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    if-eq v6, v7, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v6

    sget-object v7, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    if-eq v6, v7, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v6

    sget-object v7, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    if-ne v6, v7, :cond_4

    .line 121
    :cond_3
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v6

    sget-object v7, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    if-ne v6, v7, :cond_5

    .line 123
    if-nez v3, :cond_4

    .line 125
    invoke-static {v5, v1, v0}, Lcom/dexcom/cgm/b/o;->a(Ljava/util/List;ILcom/dexcom/cgm/model/CgmCommand;)I

    move-result v2

    .line 127
    const/4 v3, 0x1

    .line 109
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 131
    :cond_5
    invoke-static {v5, v1, v0}, Lcom/dexcom/cgm/b/o;->a(Ljava/util/List;ILcom/dexcom/cgm/model/CgmCommand;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 134
    goto :goto_2

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 155
    :cond_7
    invoke-direct {p0}, Lcom/dexcom/cgm/b/o;->e()V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto :goto_2
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 260
    .line 262
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v1, v2

    :goto_0
    if-ltz v3, :cond_5

    .line 264
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 265
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v5

    sget-object v6, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-eq v5, v6, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v0

    sget-object v5, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v0, v5, :cond_1

    .line 268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 269
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 276
    :goto_1
    if-eq v3, v4, :cond_4

    move v1, v2

    .line 278
    :goto_2
    if-ge v1, v3, :cond_3

    .line 280
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 281
    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v4}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 283
    iget-object v4, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v4}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 262
    :cond_2
    add-int/lit8 v3, v3, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 285
    :goto_3
    if-ge v0, v3, :cond_4

    .line 287
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 290
    :cond_4
    return-void

    :cond_5
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
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
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-object v0
.end method

.method final a(Lcom/dexcom/cgm/k/j;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    .line 36
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    .line 35
    invoke-static {p1, v0, v1}, Lcom/dexcom/cgm/model/CgmCommand;->createStartCommand(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 38
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/dexcom/cgm/b/o;->e()V

    .line 40
    return-void
.end method

.method final a(Lcom/dexcom/cgm/k/j;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 53
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    .line 54
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    .line 53
    invoke-static {p1, p2, v0, v1}, Lcom/dexcom/cgm/model/CgmCommand;->createCalibrateCommand(Lcom/dexcom/cgm/k/j;ILcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 56
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_0
    if-ltz v3, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 1067
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v5

    sget-object v6, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v5, v6, :cond_0

    .line 1069
    add-int/lit8 v1, v1, 0x1

    .line 1070
    const/4 v5, 0x4

    if-lt v1, v5, :cond_0

    .line 1074
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v1

    .line 1064
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1079
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1081
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 1082
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v2

    .line 1084
    iget-object v3, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v3}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 1085
    new-instance v2, Lcom/dexcom/cgm/model/Meter;

    .line 1086
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v3

    sget-object v5, Lcom/dexcom/cgm/model/enums/MeterEntryType;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 1088
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v6

    .line 1089
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-direct {v2, v3, v5, v6, v0}, Lcom/dexcom/cgm/model/Meter;-><init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 1090
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/d/a;->writeCalibrationRecord(Lcom/dexcom/cgm/model/Meter;)V

    .line 1079
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 58
    :cond_2
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/p;)V
    .locals 6

    .prologue
    .line 184
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/p;->getCommandRequests()Ljava/lang/Iterable;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 187
    sget-object v2, Lcom/dexcom/cgm/b/p;->a:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1235
    :pswitch_1
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStartSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bb;

    move-result-object v2

    .line 1236
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/bb;->isRequestComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1238
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v2

    .line 1240
    iget-object v3, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v3}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 1241
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/model/CgmCommand;)V

    goto :goto_0

    .line 2223
    :pswitch_2
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStopSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bc;

    move-result-object v2

    .line 2224
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/bc;->isRequestComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2226
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v2

    .line 2228
    iget-object v3, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v3}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 2229
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/model/CgmCommand;)V

    goto :goto_0

    .line 3206
    :pswitch_3
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getCalibration(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/o;

    move-result-object v2

    .line 3207
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/o;->isRequestComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3209
    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->SentToTransmitter:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v3}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v3

    .line 3211
    iget-object v4, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v4}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 3212
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 3213
    new-instance v4, Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v3

    .line 3214
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/o;->getMeterEntryType()Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v5

    .line 3215
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/o;->getRequestTime()Lcom/dexcom/cgm/k/m;

    move-result-object v2

    .line 3216
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-direct {v4, v3, v5, v2, v0}, Lcom/dexcom/cgm/model/Meter;-><init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 3217
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/dexcom/cgm/d/a;->writeCalibrationRecord(Lcom/dexcom/cgm/model/Meter;)V

    goto/16 :goto_0

    .line 202
    :cond_1
    return-void

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 308
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 310
    iget-object v2, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    return-void
.end method

.method final b(Lcom/dexcom/cgm/k/j;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->Pending:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    .line 45
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    .line 44
    invoke-static {p1, v0, v1}, Lcom/dexcom/cgm/model/CgmCommand;->createStopCommand(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 47
    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/dexcom/cgm/b/o;->e()V

    .line 49
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 320
    sget-object v2, Lcom/dexcom/cgm/model/CgmCommand$CommandState;->CanceledByUser:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/model/CgmCommand;->createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lcom/dexcom/cgm/b/o;->b:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/d/a;->writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandList: size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/dexcom/cgm/b/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 300
    :cond_0
    return-object v0
.end method
