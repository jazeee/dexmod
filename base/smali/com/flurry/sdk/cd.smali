.class final Lcom/flurry/sdk/cd;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ca;I)V
    .locals 0

    .prologue
    .line 165
    iput p2, p0, Lcom/flurry/sdk/cd;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/flurry/sdk/cd;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->f()V

    .line 172
    :cond_0
    return-void
.end method
