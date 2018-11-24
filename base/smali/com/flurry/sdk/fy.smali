.class final Lcom/flurry/sdk/fy;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/fv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fv;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fv;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fv;

    iget-object v1, p0, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fv;

    invoke-static {v1}, Lcom/flurry/sdk/fv;->b(Lcom/flurry/sdk/fv;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fv;->b(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fv;

    invoke-static {v0}, Lcom/flurry/sdk/fv;->a(Lcom/flurry/sdk/fv;)V

    .line 65
    return-void
.end method
