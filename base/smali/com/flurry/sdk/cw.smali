.class final Lcom/flurry/sdk/cw;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cv;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->e()Lcom/flurry/sdk/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->d()V

    .line 390
    return-void
.end method
