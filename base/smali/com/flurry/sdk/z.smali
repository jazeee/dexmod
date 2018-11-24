.class final Lcom/flurry/sdk/z;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/sdk/z;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/z;->a:Lcom/flurry/sdk/y;

    invoke-static {v0}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;)V

    .line 103
    return-void
.end method
