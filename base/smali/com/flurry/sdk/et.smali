.class final Lcom/flurry/sdk/et;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/er;

.field private synthetic b:Lcom/flurry/sdk/eq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/es;Lcom/flurry/sdk/er;Lcom/flurry/sdk/eq;)V
    .locals 0

    .prologue
    .line 133
    iput-object p2, p0, Lcom/flurry/sdk/et;->a:Lcom/flurry/sdk/er;

    iput-object p3, p0, Lcom/flurry/sdk/et;->b:Lcom/flurry/sdk/eq;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/et;->a:Lcom/flurry/sdk/er;

    iget-object v1, p0, Lcom/flurry/sdk/et;->b:Lcom/flurry/sdk/eq;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/er;->a(Lcom/flurry/sdk/eq;)V

    .line 137
    return-void
.end method
