.class final Lcom/flurry/sdk/hv;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ho;

.field private synthetic b:Lcom/flurry/sdk/hr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hr;Lcom/flurry/sdk/ho;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hr;

    iput-object p2, p0, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/ho;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hr;

    iget-object v1, p0, Lcom/flurry/sdk/hv;->a:Lcom/flurry/sdk/ho;

    invoke-static {v0, v1}, Lcom/flurry/sdk/hr;->a(Lcom/flurry/sdk/hr;Lcom/flurry/sdk/ho;)V

    .line 316
    return-void
.end method
