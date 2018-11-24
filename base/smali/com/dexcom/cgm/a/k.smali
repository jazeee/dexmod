.class final Lcom/dexcom/cgm/a/k;
.super Ljava/lang/Object;
.source "AlertSystemComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/h;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/a/h;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/a/h;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dexcom/cgm/a/k;->a:Lcom/dexcom/cgm/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evAlertData(Lcom/dexcom/cgm/b/t;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/a/k;->a:Lcom/dexcom/cgm/a/h;

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/t;->getAlerts()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/t;->isInactivateAll()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/a/h;->access$100(Lcom/dexcom/cgm/a/h;Ljava/lang/Iterable;Z)V

    .line 58
    return-void
.end method
