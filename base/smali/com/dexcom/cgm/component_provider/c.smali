.class final Lcom/dexcom/cgm/component_provider/c;
.super Ljava/lang/Object;
.source "CgmComponentProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Lcom/dexcom/cgm/component_provider/d;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/component_provider/d;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/c;->a:Lcom/dexcom/cgm/component_provider/d;

    .line 351
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 356
    check-cast p2, Lcom/dexcom/cgm/component_provider/m;

    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/c;->a:Lcom/dexcom/cgm/component_provider/d;

    invoke-virtual {p2, v0}, Lcom/dexcom/cgm/component_provider/m;->setIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 357
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method
