.class final Lcom/dexcom/cgm/component_provider/g;
.super Ljava/lang/Object;
.source "CgmPresentationComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/h;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/component_provider/e;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/component_provider/e;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/g;->a:Lcom/dexcom/cgm/component_provider/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evAlertData(Lcom/dexcom/cgm/b/t;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/g;->a:Lcom/dexcom/cgm/component_provider/e;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/component_provider/e;->access$100(Lcom/dexcom/cgm/component_provider/e;Lcom/dexcom/cgm/b/t;)V

    .line 66
    return-void
.end method
