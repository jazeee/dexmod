.class final Lcom/dexcom/cgm/component_provider/d;
.super Ljava/lang/Object;
.source "CgmComponentProvider.java"

# interfaces
.implements Lcom/dexcom/cgm/k/b;
.implements Lcom/dexcom/cgm/k/c;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/k/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final evInterval()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/k/b;

    .line 387
    invoke-interface {v0}, Lcom/dexcom/cgm/k/b;->evInterval()V

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public final registerIntervalListener(Lcom/dexcom/cgm/k/b;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public final unregisterIntervalListener(Lcom/dexcom/cgm/k/b;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method
