.class final Lcom/google/common/io/ByteStreams$1;
.super Ljava/io/OutputStream;
.source "ByteStreams.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final write([B)V
    .locals 0

    .prologue
    .line 508
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public final write([BII)V
    .locals 0

    .prologue
    .line 512
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method
