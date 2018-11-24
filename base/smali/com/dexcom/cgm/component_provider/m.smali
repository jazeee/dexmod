.class public final Lcom/dexcom/cgm/component_provider/m;
.super Landroid/os/Binder;
.source "CgmService.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/component_provider/CgmService;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/component_provider/CgmService;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/m;->this$0:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final setIntervalListener(Lcom/dexcom/cgm/k/b;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/m;->this$0:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/component_provider/CgmService;->access$102(Lcom/dexcom/cgm/component_provider/CgmService;Lcom/dexcom/cgm/k/b;)Lcom/dexcom/cgm/k/b;

    .line 92
    return-void
.end method
