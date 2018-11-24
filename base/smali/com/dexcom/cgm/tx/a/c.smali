.class public final Lcom/dexcom/cgm/tx/a/c;
.super Ljava/lang/Object;
.source "AuthenticationControlPoint.java"


# instance fields
.field final m_authStatus:B

.field final m_bondStatus:B

.field final m_opcode:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/c;->m_opcode:B

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/dexcom/cgm/tx/a/c;->m_authStatus:B

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/dexcom/cgm/tx/a/c;->m_bondStatus:B

    .line 128
    return-void
.end method


# virtual methods
.method public final isAuthenticationSuccessful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    iget-byte v1, p0, Lcom/dexcom/cgm/tx/a/c;->m_authStatus:B

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
