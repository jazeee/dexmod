.class public final Lcom/dexcom/cgm/tx/a/d;
.super Ljava/lang/Object;
.source "AuthenticationControlPoint.java"


# instance fields
.field final m_challenge:[B

.field final m_hash:[B

.field final m_opcode:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/dexcom/cgm/tx/a/d;->m_hash:[B

    .line 93
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/dexcom/cgm/tx/a/d;->m_challenge:[B

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/d;->m_opcode:B

    .line 99
    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/d;->m_hash:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v1, p0, Lcom/dexcom/cgm/tx/a/d;->m_challenge:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    return-void
.end method


# virtual methods
.method public final getChallenge()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/d;->m_challenge:[B

    return-object v0
.end method

.method public final getHash()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/tx/a/d;->m_hash:[B

    return-object v0
.end method
