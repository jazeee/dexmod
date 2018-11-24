.class final Lcom/flurry/sdk/gi;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/h/b;

.field private synthetic b:Lcom/flurry/sdk/ge;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ge;Lcom/dexcom/cgm/h/b;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/gi;->b:Lcom/flurry/sdk/ge;

    iput-object p2, p0, Lcom/flurry/sdk/gi;->a:Lcom/dexcom/cgm/h/b;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/gi;->b:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->g()V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/dexcom/cgm/h/b;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/dexcom/cgm/h/b;

    invoke-interface {v0}, Lcom/dexcom/cgm/h/b;->a()V

    .line 133
    :cond_0
    return-void
.end method
