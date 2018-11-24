.class final Lcom/flurry/sdk/dj;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/di;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/di;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/di;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/di;

    iget-object v0, v0, Lcom/flurry/sdk/di;->a:Lcom/flurry/sdk/dh;

    invoke-static {v0}, Lcom/flurry/sdk/dh;->a(Lcom/flurry/sdk/dh;)V

    .line 84
    return-void
.end method
