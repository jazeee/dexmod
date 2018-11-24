.class final Lcom/flurry/sdk/hu;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/hr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hr;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/hr;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/hr;

    invoke-static {v0}, Lcom/flurry/sdk/hr;->a(Lcom/flurry/sdk/hr;)V

    .line 206
    return-void
.end method
