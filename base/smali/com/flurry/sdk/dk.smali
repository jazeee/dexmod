.class final Lcom/flurry/sdk/dk;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/dh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dh;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/sdk/dk;->a:Lcom/flurry/sdk/dh;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/dk;->a:Lcom/flurry/sdk/dh;

    invoke-static {v0}, Lcom/flurry/sdk/dh;->b(Lcom/flurry/sdk/dh;)V

    .line 103
    return-void
.end method
