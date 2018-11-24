.class final Lcom/flurry/sdk/ct;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/flurry/sdk/ct;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/flurry/sdk/ct;->a:Lcom/flurry/sdk/cj;

    invoke-static {v0}, Lcom/flurry/sdk/cj;->e(Lcom/flurry/sdk/cj;)V

    .line 339
    return-void
.end method
