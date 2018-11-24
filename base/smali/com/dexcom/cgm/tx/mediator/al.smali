.class public final Lcom/dexcom/cgm/tx/mediator/al;
.super Ljava/lang/Object;
.source "DataStreamBuffer.java"


# instance fields
.field private final UNKNOWN:I

.field private m_lastPacketNumber:I

.field private final m_stream:Ljava/io/ByteArrayOutputStream;

.field private m_streamCrc:I

.field private m_streamId:B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->UNKNOWN:I

    .line 14
    iput-byte v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    .line 15
    iput v1, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_lastPacketNumber:I

    .line 16
    iput v1, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamCrc:I

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_stream:Ljava/io/ByteArrayOutputStream;

    .line 21
    return-void
.end method

.method private getNextPacketNumber(I)I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xff

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPacketNumber(S)I
    .locals 1

    .prologue
    .line 69
    and-int/lit16 v0, p1, 0x3fff

    return v0
.end method

.method private getStreamId(S)B
    .locals 1

    .prologue
    .line 63
    shr-int/lit8 v0, p1, 0xe

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public final append([B)V
    .locals 5

    .prologue
    .line 25
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 27
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/mediator/al;->getStreamId(S)B

    move-result v2

    .line 28
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/tx/mediator/al;->getPacketNumber(S)I

    move-result v1

    .line 30
    iget-byte v3, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 32
    iput-byte v2, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    .line 35
    :cond_0
    iget-byte v3, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    if-eq v3, v2, :cond_1

    .line 37
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/am;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mismatched stream ID: expected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " actual="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/tx/mediator/am;-><init>(Lcom/dexcom/cgm/tx/mediator/al;Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iget v2, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_lastPacketNumber:I

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/tx/mediator/al;->getNextPacketNumber(I)I

    move-result v2

    .line 41
    if-eq v1, v2, :cond_2

    .line 43
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/am;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing packet number: expected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/tx/mediator/am;-><init>(Lcom/dexcom/cgm/tx/mediator/al;Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_stream:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 48
    iput v1, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_lastPacketNumber:I

    .line 50
    array-length v1, p1

    iget v2, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamCrc:I

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tx/a/g;->calculate(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamCrc:I

    .line 51
    return-void
.end method

.method public final getStreamCrc()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamCrc:I

    return v0
.end method

.method public final getStreamId()B
    .locals 1

    .prologue
    .line 79
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_streamId:B

    return v0
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/al;->m_stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
