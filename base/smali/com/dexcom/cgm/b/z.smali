.class final Lcom/dexcom/cgm/b/z;
.super Ljava/lang/Object;
.source "TransmitterAlertsGenerator.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/model/TransmitterInfo;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/b/z;->a:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 25
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/k;Lcom/dexcom/cgm/d/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;",
            "Lcom/dexcom/cgm/model/enums/AlertKind;",
            "Lcom/dexcom/cgm/k/k;",
            "Lcom/dexcom/cgm/d/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p3, p2}, Lcom/dexcom/cgm/d/e;->setLastReportedRemainingTimeForTransmitter(Lcom/dexcom/cgm/k/k;)V

    .line 69
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->createTransmitterLowBatteryEndOfLife(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method final a(Lcom/dexcom/cgm/d/e;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/d/e;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/d/e;->getLastReportedRemainingTimeForTransmitter()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/dexcom/cgm/b/z;->a:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/dexcom/cgm/b/z;->a:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    sget-object v3, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterSecondEolAlert:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 39
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    sget-object v1, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterSecondEolAlert:Lcom/dexcom/cgm/k/k;

    .line 40
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 42
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0, v1, v2, p1}, Lcom/dexcom/cgm/b/z;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/k;Lcom/dexcom/cgm/d/e;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    sget-object v3, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterFirstEolAlert:Lcom/dexcom/cgm/k/k;

    .line 49
    invoke-virtual {v3}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 51
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    sget-object v1, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterFirstEolAlert:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 53
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0, v1, v2, p1}, Lcom/dexcom/cgm/b/z;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/k;Lcom/dexcom/cgm/d/e;)V

    goto :goto_0
.end method

.method public final b(Lcom/dexcom/cgm/d/e;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/d/e;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/dexcom/cgm/b/z;->a:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/dexcom/cgm/b/z;->a:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    sget-object v4, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterSecondEolAlert:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 95
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0, v2, v1, p1}, Lcom/dexcom/cgm/b/z;->a(Ljava/util/ArrayList;Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/k;Lcom/dexcom/cgm/d/e;)V

    goto :goto_0
.end method
