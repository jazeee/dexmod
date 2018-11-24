.class final Lcom/flurry/sdk/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ay;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ay;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/flurry/sdk/bb;->a:Lcom/flurry/sdk/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/bb;->a:Lcom/flurry/sdk/ay;

    invoke-static {v0}, Lcom/flurry/sdk/ay;->b(Lcom/flurry/sdk/ay;)V

    .line 132
    return-void
.end method
