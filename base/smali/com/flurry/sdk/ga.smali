.class final Lcom/flurry/sdk/ga;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/fv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fv;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/ga;->a:Lcom/flurry/sdk/fv;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/ga;->a:Lcom/flurry/sdk/fv;

    invoke-static {v0}, Lcom/flurry/sdk/fv;->a(Lcom/flurry/sdk/fv;)V

    .line 107
    return-void
.end method
