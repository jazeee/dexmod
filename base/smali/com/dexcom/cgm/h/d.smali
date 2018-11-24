.class public final Lcom/dexcom/cgm/h/d;
.super Ljava/lang/Object;
.source "CgmPresentation.java"


# instance fields
.field private m_alerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private m_inactivateAll:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/h/d;->m_alerts:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/h/d;->m_inactivateAll:Z

    .line 59
    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/b/t;)Lcom/dexcom/cgm/h/d;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/dexcom/cgm/h/d;

    invoke-direct {v1}, Lcom/dexcom/cgm/h/d;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/t;->getAlerts()Ljava/lang/Iterable;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 91
    iget-object v3, v1, Lcom/dexcom/cgm/h/d;->m_alerts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a;->fromInternal(Lcom/dexcom/cgm/model/AlertInstanceInformation;)Lcom/dexcom/cgm/h/a/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/t;->isInactivateAll()Z

    move-result v0

    iput-boolean v0, v1, Lcom/dexcom/cgm/h/d;->m_inactivateAll:Z

    .line 94
    return-object v1
.end method


# virtual methods
.method public final getAlerts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/h/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/h/d;->m_alerts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final isInactivateAll()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/dexcom/cgm/h/d;->m_inactivateAll:Z

    return v0
.end method
