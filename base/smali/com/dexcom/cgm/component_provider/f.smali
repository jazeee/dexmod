.class final Lcom/dexcom/cgm/component_provider/f;
.super Ljava/lang/Object;
.source "CgmPresentationComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/i;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/component_provider/e;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/component_provider/e;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/f;->a:Lcom/dexcom/cgm/component_provider/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evCgmData(Lcom/dexcom/cgm/b/u;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/f;->a:Lcom/dexcom/cgm/component_provider/e;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/component_provider/e;->access$000(Lcom/dexcom/cgm/component_provider/e;Lcom/dexcom/cgm/b/u;)V

    .line 48
    return-void
.end method
