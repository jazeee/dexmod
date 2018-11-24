.class final Lcom/flurry/sdk/fx;
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
        "Lcom/flurry/sdk/du;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/fv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fv;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/fx;->a:Lcom/flurry/sdk/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/flurry/sdk/du;

    .line 1045
    iget-boolean v0, p1, Lcom/flurry/sdk/du;->a:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/flurry/sdk/fx;->a:Lcom/flurry/sdk/fv;

    invoke-static {v0}, Lcom/flurry/sdk/fv;->a(Lcom/flurry/sdk/fv;)V

    .line 42
    :cond_0
    return-void
.end method
