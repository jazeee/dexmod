.class final Lcom/google/common/escape/Platform$1;
.super Ljava/lang/ThreadLocal;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/common/escape/Platform$1;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected final initialValue()[C
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
