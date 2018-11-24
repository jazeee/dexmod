.class Lcom/dexcom/cgm/tx/mediator/b;
.super Ljava/lang/Object;
.source "AdvertisingSyncStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field final synthetic a:Lcom/dexcom/cgm/tx/mediator/a;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/a;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/b;->a:Lcom/dexcom/cgm/tx/mediator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/a;B)V
    .locals 0

    .prologue
    .line 2103
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/b;-><init>(Lcom/dexcom/cgm/tx/mediator/a;)V

    return-void
.end method

.method private static a(Ljava/util/List;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 4087
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 4088
    const/4 v2, 0x0

    .line 4089
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/model/Glucose;

    .line 4091
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v4

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move-object v2, v1

    .line 4095
    goto :goto_0

    .line 4100
    :cond_0
    if-eqz v2, :cond_1

    .line 4102
    new-instance v1, Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 4103
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/k/m;->convertTransmitterTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 4104
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4106
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 4111
    :cond_1
    return-wide p1

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/util/List;JLcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/cc;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;J",
            "Lcom/dexcom/cgm/k/n;",
            ")",
            "Lcom/dexcom/cgm/tx/mediator/cc;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 3031
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3033
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Record list is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3040
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 3116
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 3117
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    sub-long/2addr v0, p1

    .line 3043
    :goto_0
    new-instance v8, Lcom/dexcom/cgm/tx/mediator/g;

    invoke-direct {v8, p0, v0, v1}, Lcom/dexcom/cgm/tx/mediator/g;-><init>(Ljava/util/List;J)V

    move-wide v2, v4

    move-wide v6, v4

    .line 3044
    :goto_1
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/g;->c()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3046
    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    .line 3048
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/g;->a()J

    move-result-wide v6

    .line 3050
    :cond_1
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/g;->b()J

    move-result-wide v2

    .line 3052
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/g;->d()V

    goto :goto_1

    .line 3117
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3055
    :cond_3
    cmp-long v8, v6, v4

    if-eqz v8, :cond_6

    cmp-long v8, v2, v4

    if-eqz v8, :cond_6

    .line 4081
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-lez v8, :cond_4

    invoke-virtual {p3}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 4082
    :cond_4
    invoke-static {p0, v0, v1}, Lcom/dexcom/cgm/tx/mediator/b;->a(Ljava/util/List;J)J

    move-result-wide v0

    .line 3058
    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    move-wide v6, v0

    .line 3062
    :cond_5
    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    move-wide v2, v4

    move-wide v6, v4

    .line 3069
    :cond_6
    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 3071
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/cc;

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/dexcom/cgm/tx/mediator/cc;-><init>(JJ)V

    .line 3075
    :goto_2
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 1108
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 1109
    packed-switch v0, :pswitch_data_0

    .line 1119
    :goto_0
    return-void

    .line 1113
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/b;->a:Lcom/dexcom/cgm/tx/mediator/a;

    invoke-static {v0, p2}, Lcom/dexcom/cgm/tx/mediator/a;->a(Lcom/dexcom/cgm/tx/mediator/a;[B)V

    goto :goto_0

    .line 1109
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
