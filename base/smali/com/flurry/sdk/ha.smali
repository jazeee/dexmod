.class public final Lcom/flurry/sdk/ha;
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
        "Lcom/flurry/sdk/gz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/flurry/sdk/gz;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v2, Lcom/flurry/sdk/hc;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/hc;-><init>(Lcom/flurry/sdk/ha;Ljava/io/InputStream;)V

    .line 53
    new-instance v1, Lcom/flurry/sdk/gz;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/gz;-><init>(Lcom/flurry/sdk/e;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/gz;->a(Lcom/flurry/sdk/gz;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    .line 56
    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;Lcom/flurry/sdk/gz;)V
    .locals 2

    .prologue
    .line 24
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Lcom/flurry/sdk/hb;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/hb;-><init>(Lcom/flurry/sdk/ha;Ljava/io/OutputStream;)V

    .line 35
    invoke-static {p2}, Lcom/flurry/sdk/gz;->a(Lcom/flurry/sdk/gz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/flurry/sdk/gz;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ha;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/gz;)V

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ha;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/gz;

    move-result-object v0

    return-object v0
.end method
