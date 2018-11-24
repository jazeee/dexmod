.class final Lcom/flurry/sdk/cm;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()V

    .line 248
    return-void
.end method
