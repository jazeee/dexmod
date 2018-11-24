.class public final Lcom/dexcom/cgm/tx/a/f;
.super Ljava/lang/Object;
.source "BackfillData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/dexcom/cgm/tx/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_buffer:Ljava/nio/ByteBuffer;

.field private m_next:Lcom/dexcom/cgm/tx/a/e;

.field private m_sequenceNumber:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_sequenceNumber:J

    .line 65
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/a/f;->createNext()Lcom/dexcom/cgm/tx/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_next:Lcom/dexcom/cgm/tx/a/e;

    .line 67
    :cond_0
    return-void
.end method

.method private createNext()Lcom/dexcom/cgm/tx/a/e;
    .locals 10

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 102
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/a;->getUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/d/d;->getRateAsDouble(B)D

    move-result-wide v8

    .line 95
    new-instance v1, Lcom/dexcom/cgm/tx/a/e;

    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/f;->m_sequenceNumber:J

    invoke-direct/range {v1 .. v9}, Lcom/dexcom/cgm/tx/a/e;-><init>(JJIBD)V

    .line 101
    iget-wide v2, p0, Lcom/dexcom/cgm/tx/a/f;->m_sequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dexcom/cgm/tx/a/f;->m_sequenceNumber:J

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_next:Lcom/dexcom/cgm/tx/a/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Lcom/dexcom/cgm/tx/a/e;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/f;->m_next:Lcom/dexcom/cgm/tx/a/e;

    .line 79
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/a/f;->createNext()Lcom/dexcom/cgm/tx/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/tx/a/f;->m_next:Lcom/dexcom/cgm/tx/a/e;

    .line 80
    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/f;->next()Lcom/dexcom/cgm/tx/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove operation not supported on this iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
