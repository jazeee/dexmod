.class final Lcom/dexcom/cgm/tx/mediator/cc;
.super Ljava/lang/Object;
.source "TxTimeRange.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/dexcom/cgm/tx/mediator/cc;->a:J

    .line 11
    iput-wide p3, p0, Lcom/dexcom/cgm/tx/mediator/cc;->b:J

    .line 12
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/cc;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/cc;->b:J

    return-wide v0
.end method
