.class public Lcom/flurry/sdk/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hj",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hj",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/hj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/flurry/sdk/he;->a:Lcom/flurry/sdk/hj;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/he;->a:Lcom/flurry/sdk/hj;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/he;->a:Lcom/flurry/sdk/hj;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/hj;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-void
.end method

.method public b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/he;->a:Lcom/flurry/sdk/hj;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/he;->a:Lcom/flurry/sdk/hj;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/hj;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
