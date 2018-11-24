.class public final Lcom/flurry/sdk/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hj",
        "<",
        "Lcom/flurry/sdk/bn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/flurry/sdk/bn;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    new-instance v1, Lcom/flurry/sdk/bq;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/bq;-><init>(Lcom/flurry/sdk/bo;Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 70
    new-instance v0, Lcom/flurry/sdk/bn;

    invoke-direct {v0}, Lcom/flurry/sdk/bn;-><init>()V

    .line 71
    new-array v2, v2, [B

    invoke-static {v0, v2}, Lcom/flurry/sdk/bn;->a(Lcom/flurry/sdk/bn;[B)[B

    .line 72
    invoke-static {v0}, Lcom/flurry/sdk/bn;->a(Lcom/flurry/sdk/bn;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 74
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;Lcom/flurry/sdk/bn;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Lcom/flurry/sdk/bp;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/bp;-><init>(Lcom/flurry/sdk/bo;Ljava/io/OutputStream;)V

    .line 43
    invoke-static {p2}, Lcom/flurry/sdk/bn;->a(Lcom/flurry/sdk/bn;)[B

    move-result-object v1

    array-length v1, v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    invoke-static {p2}, Lcom/flurry/sdk/bn;->a(Lcom/flurry/sdk/bn;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 48
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Lcom/flurry/sdk/bn;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/bo;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/bn;)V

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bo;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/bn;

    move-result-object v0

    return-object v0
.end method
