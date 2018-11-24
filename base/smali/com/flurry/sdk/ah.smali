.class final Lcom/flurry/sdk/ah;
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
.field private synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 1

    .prologue
    .line 146
    check-cast p1, Lcom/flurry/sdk/du;

    .line 1149
    iget-boolean v0, p1, Lcom/flurry/sdk/du;->a:Z

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/y;

    invoke-static {v0}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;)V

    .line 146
    :cond_0
    return-void
.end method
