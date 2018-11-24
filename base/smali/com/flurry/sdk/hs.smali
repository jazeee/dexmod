.class final Lcom/flurry/sdk/hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/er",
        "<",
        "Lcom/flurry/sdk/hz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/hr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hr;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/hs;->a:Lcom/flurry/sdk/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 1

    .prologue
    .line 60
    .line 1063
    iget-object v0, p0, Lcom/flurry/sdk/hs;->a:Lcom/flurry/sdk/hr;

    invoke-static {v0}, Lcom/flurry/sdk/hr;->a(Lcom/flurry/sdk/hr;)V

    .line 60
    return-void
.end method
