.class final Lcom/flurry/sdk/cu;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:J

.field private synthetic b:J

.field private synthetic c:J

.field private synthetic d:I

.field private synthetic e:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;JJJI)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cj;

    iput-wide p2, p0, Lcom/flurry/sdk/cu;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/cu;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/cu;->c:J

    iput p8, p0, Lcom/flurry/sdk/cu;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 348
    iget-object v1, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cj;

    iget-wide v2, p0, Lcom/flurry/sdk/cu;->a:J

    iget-wide v4, p0, Lcom/flurry/sdk/cu;->b:J

    iget-wide v6, p0, Lcom/flurry/sdk/cu;->c:J

    iget v8, p0, Lcom/flurry/sdk/cu;->d:I

    invoke-virtual/range {v1 .. v8}, Lcom/flurry/sdk/cj;->a(JJJI)Lcom/flurry/sdk/ce;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cj;

    invoke-static {v1}, Lcom/flurry/sdk/cj;->f(Lcom/flurry/sdk/cj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    iget-object v1, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cj;

    invoke-static {v1}, Lcom/flurry/sdk/cj;->f(Lcom/flurry/sdk/cj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cj;

    invoke-virtual {v0}, Lcom/flurry/sdk/cj;->c()V

    .line 359
    return-void
.end method
