.class final Lcom/dexcom/cgm/a/e;
.super Ljava/lang/Object;
.source "AlertStateMachine.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/a/a;

.field private final b:Lcom/dexcom/cgm/d/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Lcom/dexcom/cgm/model/AlertStateRecord;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/a/a;Lcom/dexcom/cgm/d/a;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/a/e;->c:Ljava/util/ArrayList;

    .line 35
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/dexcom/cgm/model/AlertStateRecord;

    iput-object v0, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    .line 91
    iput-object p2, p0, Lcom/dexcom/cgm/a/e;->b:Lcom/dexcom/cgm/d/a;

    .line 92
    invoke-direct {p0}, Lcom/dexcom/cgm/a/e;->e()V

    .line 93
    return-void
.end method

.method private static a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 9

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->isGlucoseAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getEgv()I

    move-result v6

    .line 353
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v8, p6

    .line 351
    invoke-static/range {v0 .. v8}, Lcom/dexcom/cgm/model/AlertStateRecord;->createGlucoseAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;IILcom/dexcom/cgm/model/enums/TrendArrow;I)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 355
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->isSensorExpirationAlert()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->isTransmitterEolAlert()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    .line 357
    invoke-static/range {v0 .. v7}, Lcom/dexcom/cgm/model/AlertStateRecord;->createExpirationAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;ILcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 367
    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->createGeneralAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ">;",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 257
    if-ne v0, p1, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v1

    .line 182
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    .line 4213
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 187
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v3

    aget-object v4, v2, v3

    .line 188
    invoke-virtual {v1}, Lcom/dexcom/cgm/a/c;->isSuspendable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v3, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 192
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveSnoozed:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 193
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/AlertStateRecord;->getTriggerTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 194
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/AlertStateRecord;->getLastDisplayTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    move v6, v5

    .line 192
    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 196
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/dexcom/cgm/a/e;->f()V

    .line 207
    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 97
    move v7, v5

    :goto_0
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 99
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    aget-object v1, v0, v7

    .line 100
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 101
    iget-object v8, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    aput-object v0, v8, v7

    .line 97
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->b:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertStateRecords()Ljava/lang/Iterable;

    move-result-object v0

    .line 1111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 1113
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v3

    aput-object v0, v2, v3

    goto :goto_1

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    array-length v1, v0

    :goto_2
    if-ge v5, v1, :cond_4

    aget-object v2, v0, v5

    .line 1136
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertState()Lcom/dexcom/cgm/model/enums/AlertState;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    if-ne v3, v4, :cond_2

    .line 1138
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1140
    :cond_2
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertState()Lcom/dexcom/cgm/model/enums/AlertState;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveSnoozed:Lcom/dexcom/cgm/model/enums/AlertState;

    if-ne v3, v4, :cond_3

    .line 1142
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1146
    :cond_3
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_4
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->b:Lcom/dexcom/cgm/d/a;

    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/a;->updateAlertStateRecords([Lcom/dexcom/cgm/model/AlertStateRecord;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 50
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method final a(Lcom/dexcom/cgm/model/AlertStateRecord;)V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 81
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v4

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/model/AlertStateRecord;->cloneWithNewDisplayedCountAndDisplayTime(ILcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    aput-object v0, v3, v4

    .line 85
    invoke-direct {p0}, Lcom/dexcom/cgm/a/e;->f()V

    .line 86
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/a/e;->c(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 1290
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v9

    .line 1291
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v1, v9}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/a/c;->isUserVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-static {v1, v9}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1297
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v9}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v2

    aget-object v6, v1, v2

    .line 1298
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 1300
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->getTriggerTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 1301
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAcknowledgementTime()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    .line 1302
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->getLastDisplayTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    .line 1303
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertTriggeredCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1304
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v6

    .line 1298
    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v1

    .line 1305
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v9}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 3267
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    .line 3268
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    array-length v3, v2

    move v0, v7

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 3270
    if-eq v4, v1, :cond_4

    .line 3272
    iget-object v5, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    .line 3273
    invoke-static {v5, v4}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3275
    :cond_2
    iget-object v5, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v5, v4}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/dexcom/cgm/a/c;->isInactivatedBy(Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3277
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/a/e;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 3279
    :cond_3
    iget-object v5, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v5, v4}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/dexcom/cgm/a/c;->isSuspendedBy(Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3281
    invoke-direct {p0, v4}, Lcom/dexcom/cgm/a/e;->c(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 3268
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1308
    :cond_5
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    invoke-static {v1, v9}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1310
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    .line 2213
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1311
    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 1312
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v5, v10

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v1

    .line 1316
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v9}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 1317
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1320
    :cond_6
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    invoke-static {v1, v9}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v9}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    .line 1323
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v2, v9}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v2

    .line 1324
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAcknowledgementTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 1325
    invoke-virtual {v2}, Lcom/dexcom/cgm/a/c;->getSuspensionPeriod()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    .line 1324
    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 1326
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1328
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    .line 3213
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1329
    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 1330
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v5, v10

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v1

    .line 1333
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v9}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    .line 1334
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    :cond_7
    invoke-direct {p0}, Lcom/dexcom/cgm/a/e;->f()V

    .line 160
    return-void
.end method

.method public final b()Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 7

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 75
    :cond_0
    return-object v2

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v0

    aget-object v1, v1, v0

    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    .line 64
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/c;->getPriority$ec0cd56()I

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 67
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->a:Lcom/dexcom/cgm/a/a;

    .line 68
    invoke-virtual {v3, v0}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/a/c;->getPriority$ec0cd56()I

    move-result v3

    .line 69
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v1, -0x1

    if-le v5, v6, :cond_2

    .line 72
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v0

    aget-object v1, v1, v0

    move v0, v3

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 74
    goto :goto_0

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public final b(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 227
    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    .line 5213
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/dexcom/cgm/a/e;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->g:Ljava/util/ArrayList;

    .line 6213
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    :goto_1
    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 241
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertInstanceInformation;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 245
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-direct {p0}, Lcom/dexcom/cgm/a/e;->f()V

    .line 249
    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method final c()Ljava/lang/Iterable;
    .locals 4
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
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 123
    iget-object v3, p0, Lcom/dexcom/cgm/a/e;->d:[Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    .line 124
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    return-object v1
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 219
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 221
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/a/e;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method
