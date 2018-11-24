.class final Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/ByteStreams$1;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method final writeTo([BI)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->count:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-void
.end method
