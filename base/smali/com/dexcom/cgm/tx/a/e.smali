.class public final Lcom/dexcom/cgm/tx/a/e;
.super Ljava/lang/Object;
.source "BackfillData.java"


# instance fields
.field private final m_algorithmState:B

.field private final m_egv:I

.field private final m_rate:D

.field private final m_sequenceNumber:J

.field private final m_transmitterTime:J


# direct methods
.method public constructor <init>(JJIBD)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/dexcom/cgm/tx/a/e;->m_sequenceNumber:J

    .line 22
    iput-wide p3, p0, Lcom/dexcom/cgm/tx/a/e;->m_transmitterTime:J

    .line 23
    iput p5, p0, Lcom/dexcom/cgm/tx/a/e;->m_egv:I

    .line 24
    iput-byte p6, p0, Lcom/dexcom/cgm/tx/a/e;->m_algorithmState:B

    .line 25
    iput-wide p7, p0, Lcom/dexcom/cgm/tx/a/e;->m_rate:D

    .line 26
    return-void
.end method


# virtual methods
.method public final getAlgorithmState()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/a/e;->m_algorithmState:B

    return v0
.end method

.method public final getEgv()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/tx/a/e;->m_egv:I

    return v0
.end method

.method public final getRate()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/e;->m_rate:D

    return-wide v0
.end method

.method public final getSequenceNumber()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/e;->m_sequenceNumber:J

    return-wide v0
.end method

.method public final getTransmitterTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/a/e;->m_transmitterTime:J

    return-wide v0
.end method
