.class final Lcom/dexcom/cgm/a/j;
.super Ljava/lang/Object;
.source "AlertSystemComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/j/d;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/a/h;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/a/h;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/a/j;->a:Lcom/dexcom/cgm/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evAlertData(Lcom/dexcom/cgm/j/b;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/a/j;->a:Lcom/dexcom/cgm/a/h;

    invoke-virtual {p1}, Lcom/dexcom/cgm/j/b;->getAlerts()Ljava/lang/Iterable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/a/h;->access$100(Lcom/dexcom/cgm/a/h;Ljava/lang/Iterable;Z)V

    .line 48
    return-void
.end method
