.class final Lcom/flurry/sdk/db;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/da;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/da;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/sdk/db;->a:Lcom/flurry/sdk/da;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/db;->a:Lcom/flurry/sdk/da;

    iget-object v0, v0, Lcom/flurry/sdk/da;->a:Lcom/flurry/sdk/cj;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/dg;->a()Lcom/flurry/sdk/dg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/dg;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/cj;->a(Lcom/flurry/sdk/cj;ZJ)V

    .line 194
    return-void
.end method
