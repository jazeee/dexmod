.class final Lcom/flurry/sdk/ad;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:[B

.field private synthetic b:Lcom/flurry/sdk/ac;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ac;[B)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/flurry/sdk/ad;->b:Lcom/flurry/sdk/ac;

    iput-object p2, p0, Lcom/flurry/sdk/ad;->a:[B

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/ad;->b:Lcom/flurry/sdk/ac;

    iget-object v0, v0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    iget-object v1, p0, Lcom/flurry/sdk/ad;->b:Lcom/flurry/sdk/ac;

    iget-wide v2, v1, Lcom/flurry/sdk/ac;->a:J

    iget-object v1, p0, Lcom/flurry/sdk/ad;->b:Lcom/flurry/sdk/ac;

    iget-boolean v1, v1, Lcom/flurry/sdk/ac;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/ad;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;JZ[B)V

    .line 482
    return-void
.end method
