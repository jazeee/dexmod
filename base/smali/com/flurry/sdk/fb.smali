.class final Lcom/flurry/sdk/fb;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ip;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fa;Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 123
    iput-object p2, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/ip;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, Lcom/flurry/sdk/ip;->q()V

    .line 127
    return-void
.end method
