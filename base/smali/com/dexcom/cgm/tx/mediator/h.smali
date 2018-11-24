.class public Lcom/dexcom/cgm/tx/mediator/h;
.super Ljava/lang/Object;
.source "BackfillCriteria.java"


# static fields
.field public static final crop__cancel:I = 0x7f0a0092

.field public static final crop__done:I = 0x7f0a0093

.field public static final crop__pick_error:I = 0x7f0a0094

.field public static final crop__saving:I = 0x7f0a0095

.field public static final crop__wait:I = 0x7f0a0096


# instance fields
.field final m_maxBackfillSeconds:J

.field final m_minStartTime:Lcom/dexcom/cgm/k/n;

.field final m_records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dexcom/cgm/k/n;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;",
            "Lcom/dexcom/cgm/k/n;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_records:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_minStartTime:Lcom/dexcom/cgm/k/n;

    .line 39
    iput-wide p3, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_maxBackfillSeconds:J

    .line 40
    return-void
.end method

.method public static create(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;J)Lcom/dexcom/cgm/tx/mediator/h;
    .locals 5

    .prologue
    .line 19
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p3, p4}, Lcom/dexcom/cgm/k/j;->subtractSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 21
    invoke-interface {p0, v1, v0}, Lcom/dexcom/cgm/d/a;->getGlucoseRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    const/4 v3, 0x1

    .line 24
    invoke-interface {p0, v1, v2, p1, v3}, Lcom/dexcom/cgm/d/a;->getGlucoseRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;

    move-result-object v1

    .line 30
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 32
    new-instance v1, Lcom/dexcom/cgm/tx/mediator/h;

    invoke-direct {v1, v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/h;-><init>(Ljava/util/List;Lcom/dexcom/cgm/k/n;J)V

    return-object v1
.end method


# virtual methods
.method public final getMaxBackfillSeconds()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_maxBackfillSeconds:J

    return-wide v0
.end method

.method public final getMinStartTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_minStartTime:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/h;->m_records:Ljava/util/List;

    return-object v0
.end method
