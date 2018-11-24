.class final Lcom/flurry/sdk/cx;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;J)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cj;

    iput-wide p2, p0, Lcom/flurry/sdk/cx;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/cx;->b:Lcom/flurry/sdk/cj;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/flurry/sdk/cx;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/cj;->a(Lcom/flurry/sdk/cj;ZJ)V

    .line 403
    return-void
.end method
