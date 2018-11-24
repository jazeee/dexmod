.class final Lcom/flurry/sdk/af;
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
        "Lcom/flurry/sdk/do;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/flurry/sdk/af;->a:Lcom/flurry/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 1

    .prologue
    .line 106
    .line 1109
    iget-object v0, p0, Lcom/flurry/sdk/af;->a:Lcom/flurry/sdk/y;

    invoke-static {v0}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;)V

    .line 106
    return-void
.end method
