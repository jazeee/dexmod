.class final Lcom/flurry/sdk/cs;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:J


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;J)V
    .locals 0

    .prologue
    .line 326
    iput-wide p2, p0, Lcom/flurry/sdk/cs;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/cs;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/y;->a(J)V

    .line 330
    return-void
.end method
