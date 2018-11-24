.class final Lcom/flurry/sdk/ey;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ip;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ex;Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 61
    iput-object p2, p0, Lcom/flurry/sdk/ey;->a:Lcom/flurry/sdk/ip;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/ey;->a:Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, Lcom/flurry/sdk/ip;->o()V

    .line 65
    return-void
.end method
