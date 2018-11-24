.class final Lcom/dexcom/cgm/component_provider/i;
.super Ljava/lang/Object;
.source "CgmPresentationExtensionComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/g;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/component_provider/h;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/component_provider/h;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/i;->a:Lcom/dexcom/cgm/component_provider/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evAlertSettingsData(Lcom/dexcom/cgm/b/s;)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/i;->a:Lcom/dexcom/cgm/component_provider/h;

    iget-object v0, v0, Lcom/dexcom/cgm/component_provider/h;->m_cgmAlertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/b;

    .line 28
    invoke-static {p1}, Lcom/dexcom/cgm/i/b;->fromInternal(Lcom/dexcom/cgm/b/s;)Lcom/dexcom/cgm/i/b;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/h/b;->evAlertSettingsData(Lcom/dexcom/cgm/i/b;)V

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
