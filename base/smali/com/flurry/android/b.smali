.class final Lcom/flurry/android/b;
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
        "Lcom/flurry/sdk/hp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 2

    .prologue
    .line 86
    check-cast p1, Lcom/flurry/sdk/hp;

    .line 1091
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/c;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/c;-><init>(Lcom/flurry/android/b;Lcom/flurry/sdk/hp;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->a(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
